import os, json, random, shutil, zipfile
random.seed(7)
REPO=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ROOT=os.path.join(REPO,'datapack')
shutil.rmtree(ROOT, ignore_errors=True)
FN=f'{ROOT}/data/iles/function'
LT=f'{ROOT}/data/iles/loot_table'
os.makedirs(f'{FN}/island'); os.makedirs(f'{LT}/chest'); os.makedirs(f'{LT}/drop')
os.makedirs(f'{ROOT}/data/minecraft/tags/function')

def wf(path, lines):
    with open(f'{FN}/{path}.mcfunction','w',encoding='utf-8') as f: f.write('\n'.join(lines)+'\n')
def wj(path, obj):
    with open(f'{ROOT}/data/{path}.json','w',encoding='utf-8') as f: json.dump(obj,f,ensure_ascii=False,indent=1)

# ---------- helpers ----------
def R(n): return '~' if n==0 else f'~{n}'
def C(x,y,z): return f'{R(x)} {R(y)} {R(z)}'
def fill(a,b,block,mode=''): return f'fill {C(*a)} {C(*b)} {block}'+(f' {mode}' if mode else '')
def sb(p,block): return f'setblock {C(*p)} {block}'
def summon(ent,p,nbt=''): return f'summon minecraft:{ent} {C(*p)}'+(f' {{{nbt}}}' if nbt else '')
def name(t,color='gold'): return f'CustomName:{{text:"{t}",color:"{color}"}},CustomNameVisible:1b'
KEEP='PersistenceRequired:1b'
def chest(p,loot,nm,facing='south',color='gold'):
    return sb(p,f'chest[facing={facing}]{{LootTable:"iles:chest/{loot}",CustomName:{{text:"{nm}",color:"{color}"}}}}')
def sign(p,msgs,rot=0,color='black'):
    m=','.join(f'"{x}"' for x in (msgs+['','','',''])[:4])
    return sb(p,f'oak_sign[rotation={rot}]{{front_text:{{messages:[{m}],color:"{color}"}},is_waxed:1b}}')
def octa(y,rad,block):
    a=rad; b=max(1,round(rad*0.6)); c=max(1,round(rad*0.86))
    return [fill((-a,y,-b),(a,y,b),block),fill((-b,y,-a),(b,y,a),block),fill((-c,y,-c),(c,y,c),block)]
def base(top,sub,deep,r=8,biome=None):
    L=[];i=0
    while True:
        rad=max(1,r-i-i//2)
        blk=top if i==0 else (sub if i<=2 else deep)
        if rad<=1:
            L.append(fill((-1,-i,-1),(1,-i,1),blk)); L.append(sb((0,-i-1,0),deep)); break
        L+=octa(-i,rad,blk); i+=1
    if biome: L.append(f'fillbiome {C(-(r+2),-10,-(r+2))} {C(r+2,12,r+2)} minecraft:{biome}')
    return L
def tree(x,z,h=5,log='oak_log',leaf='oak_leaves'):
    return [fill((x,1,z),(x,h,z),log),
            fill((x-2,h-2,z-2),(x+2,h-1,z+2),f'{leaf}[persistent=true]','keep'),
            fill((x-1,h,z-1),(x+1,h+1,z+1),f'{leaf}[persistent=true]','keep')]
def info(sub,desc,color='yellow'):
    return [f'title @a subtitle {{"text":"{sub}","color":"{color}"}}',
            f'tellraw @a [{{"text":">> ","color":"gray"}},{{"text":"{desc}","color":"{color}"}}]']
def snd(sound,vol=1,pitch=1):
    return f'execute as @a at @s run playsound minecraft:{sound} master @s ~ ~ ~ {vol} {pitch}'
def house(x,z):
    return [fill((x-2,0,z-2),(x+2,4,z+2),'oak_planks','hollow'),
            sb((x,1,z+2),'air'),sb((x,2,z+2),'air'),
            sb((x-2,2,z),'glass_pane'),sb((x+2,2,z),'glass_pane'),
            sb((x+1,1,z-1),'crafting_table'),sb((x-1,1,z-1),'torch')]

ISLANDS=[]  # list of (key, lines)
def add(key,lines): ISLANDS.append((key,lines))

# ---------- start island ----------
# Ile de depart : 2x2 chunks. Placee en (0,100,0), elle occupe x,z de -15 a 15,
# donc exactement les chunks (-1,-1) (0,-1) (-1,0) (0,0) = 4 chunks.
S=base('grass_block','dirt','stone',15)
S.append('fillbiome ~-16 ~-10 ~-16 ~15 ~12 ~15 minecraft:plains')
for x,z in [(-3,-3),(-10,6),(9,9),(-8,-11),(11,-9)]: S+=tree(x,z,5)
S+=[chest((3,1,2),'start','Coffre de départ','west'),
    sb((1,1,-3),'poppy'),sb((-1,1,4),'dandelion'),sb((6,1,6),'poppy'),sb((-6,1,2),'dandelion'),sb((0,1,9),'poppy'),
    fill((4,0,-5),(8,0,-3),'water')]
wf('island/start',S)

# 1 foret
L=base('grass_block','dirt','stone',8,'forest')
for x,z in [(-4,-3),(4,-4),(-4,4),(5,3)]: L+=tree(x,z,5)
L+=[chest((0,1,0),'loterie','Coffre loto'),sb((2,1,-2),'poppy'),sb((-2,1,2),'dandelion'),
    summon('sheep',(1,1,2),f'Color:6b,{name("Barbara","light_purple")},{KEEP}')]
L+=info('Île Forêt','Barbara le mouton rose garde un coffre loto : jackpot ou bâtons ?')
add('foret',L)
# 2 desert
L=base('sand','sandstone','sandstone',8,'desert')
for x,z in [(-4,-3),(4,2),(-2,5)]: L.append(fill((x,1,z),(x,2,z),'cactus'))
L+=[sb((2,1,-4),'dead_bush'),chest((-3,1,1),'correct','Coffre du désert','east')]
trades=('Offers:{Recipes:[{buy:{id:"minecraft:stick",count:5},sell:{id:"minecraft:diamond",count:1},maxUses:3,xp:0},'
        '{buy:{id:"minecraft:rotten_flesh",count:16},sell:{id:"minecraft:golden_apple",count:1},maxUses:3,xp:0},'
        '{buy:{id:"minecraft:dirt",count:32},sell:{id:"minecraft:emerald",count:4},maxUses:5,xp:0}]}')
L.append(summon('villager',(0,1,0),f'VillagerData:{{type:"minecraft:desert",profession:"minecraft:cleric",level:5}},NoAI:1b,Invulnerable:1b,{trades},{name("Pedro le Marchand Louche","gold")}'))
L+=info('Île Désert','Pedro achète 5 bâtons contre 1 diamant. Oui oui.')
add('desert',L)
# 3 poules
L=base('grass_block','dirt','stone',7,'plains')
L+=[fill((3,1,3),(4,2,4),'hay_block'),chest((0,1,0),'batons','COFFRE LÉGENDAIRE','south'),
    sign((0,1,-2),['COFFRE','LÉGENDAIRE','(vraiment)']),]
for i in range(40):
    x=random.randint(-5,5); z=random.randint(-5,5)
    L.append(summon('chicken',(x,1,z), name('Gérard','yellow') if i<2 else ''))
L+=info('Île Poulailler','40 poules. Un coffre légendaire. Fais-lui confiance.')
L.append(snd('entity.chicken.ambient',1,0.8))
add('poules',L)
# 4 neige
L=base('snow_block','snow_block','stone',8,'snowy_plains')
for x,z in [(-4,-3),(3,-4),(4,4)]: L+=tree(x,z,6,'spruce_log','spruce_leaves')
L+=[chest((3,1,0),'enchant','Coffre de givre','west','aqua'),
    summon('wolf',(0,1,2),f'{name("Loulou","white")},{KEEP}'),
    summon('snow_golem',(-2,1,3),f'{name("Olaf","aqua")},{KEEP}')]
L+=info('Île Neige','Loulou le loup et Olaf gardent un coffre givré.','aqua')
add('neige',L)
# 5 jungle
L=base('grass_block','dirt','stone',8,'jungle')
for x,z in [(-4,-3),(4,-4),(-5,3)]: L+=tree(x,z,7,'jungle_log','jungle_leaves')
L+=[fill((3,1,3),(4,1,3),'melon'),sb((3,1,4),'melon'),chest((0,1,0),'loterie','Coffre loto'),
    summon('ocelot',(1,1,2),f'{name("Pantoufle","green")},{KEEP}'),summon('ocelot',(-1,1,-2),f'{name("Gérard","green")},{KEEP}')]
L+=info('Île Jungle','Des ocelots, des melons et un coffre loto.','green')
add('jungle',L)
# 6 titanic
L=base('oak_planks','stripped_oak_log','oak_log',7,None)
L+=[chest((0,1,0),'jackpot','TRÉSOR (vite !)','south'),chest((3,1,3),'ultra_nul','Coffre bonus','north','gray'),
    sign((0,1,-3),['CETTE ÎLE','COULE !','Dépêche-toi','']),
    summon('marker',(0,0,0),'Tags:["iles_sink"]')]
L+=info('Île Titanic','Elle coule lentement. Prends le trésor et fuis !','red')
L.append(snd('block.bell.use',1,0.6))
add('titanic',L)
# 7 champignons
L=base('mycelium','dirt','stone',8,'mushroom_fields')
for x,z in [(-4,-3)]:
    L+=[fill((x,1,z),(x,4,z),'mushroom_stem'),fill((x-2,5,z-2),(x+2,5,z+2),'red_mushroom_block'),fill((x-1,6,z-1),(x+1,6,z+1),'red_mushroom_block')]
for x,z in [(4,-3)]:
    L+=[fill((x,1,z),(x,3,z),'mushroom_stem'),fill((x-2,4,z-2),(x+2,4,z+2),'brown_mushroom_block')]
L+=[sb((2,1,3),'red_mushroom'),sb((-2,1,4),'brown_mushroom'),chest((2,1,-1),'nourriture','Coffre à soupe','west'),
    summon('mooshroom',(0,1,2),f'{name("Meuh","red")},{KEEP}')]
L+=info('Île Champignons','Meuh la vache-champignon te salue.','red')
add('champi',L)
# 8 ferme
L=base('grass_block','dirt','stone',8,'plains')
L+=[fill((-4,0,-4),(4,0,4),'farmland[moisture=7]'),sb((0,0,0),'water'),
    fill((-4,1,-4),(-1,1,4),'wheat[age=7]'),fill((1,1,-4),(4,1,0),'carrots[age=7]'),fill((1,1,2),(4,1,4),'potatoes[age=7]'),
    chest((0,1,6),'ferme','Coffre du fermier','north','green')]
for e in ['cow','cow','cow','pig','pig','pig','sheep','sheep','chicken','chicken','chicken','chicken']:
    L.append(summon(e,(0,1,random.randint(-4,4)),KEEP))
L+=info('Île Ferme','De quoi manger pendant 10 jours. Merci les animaux !','green')
add('ferme',L)
# 9 bouton rouge
L=base('grass_block','dirt','stone',8,'plains')
L+=[sb((0,1,0),'stone'),sb((0,1,1),'stone_button[face=wall,facing=south]'),sb((0,0,0),'tnt'),
    fill((-1,-2,-1),(1,-1,1),'tnt'),
    sign((0,1,3),['NE PAS','APPUYER SUR','LE BOUTON','ROUGE'],0,'red'),
    chest((-5,1,-3),'diamants','Coffre à diamants (tranquille)','east','aqua')]
L+=info('Île Bouton Rouge','Il y a un bouton. Ne l\'appuie surtout pas. Surtout pas.','red')
add('bouton',L)
# 10 cerisier
L=base('grass_block','dirt','stone',8,'cherry_grove')
for x,z in [(-4,-3),(4,-4),(-3,4)]: L+=tree(x,z,5,'cherry_log','cherry_leaves')
for _ in range(14): L.append(sb((random.randint(-6,6),1,random.randint(-6,6)),'pink_petals'))
L+=[chest((3,1,2),'bon','Coffre Sakura','west','light_purple'),
    summon('iron_golem',(0,1,0),f'{name("Gardien","light_purple")},{KEEP}'),
    summon('villager',(-2,1,2),f'VillagerData:{{type:"minecraft:plains",profession:"minecraft:librarian",level:5}},NoAI:1b,Invulnerable:1b,{name("Sakura","light_purple")}')]
L+=info('Île Cerisier','Sakura la bibliothécaire vend peut-être de beaux livres...','light_purple')
add('cerisier',L)
# 11 arnaque
L=base('grass_block','dirt','stone',8,'plains')
L+=[chest((0,1,0),'batons','COFFRE LÉGENDAIRE (2)','south'),
    sign((0,1,-2),['COFFRE','LÉGENDAIRE','Creuse mieux','']),
    chest((3,-2,-3),'diamants','Le VRAI coffre','south','aqua'),
    summon('villager',(-3,1,2),f'VillagerData:{{type:"minecraft:plains",profession:"minecraft:nitwit",level:1}},NoAI:1b,Invulnerable:1b,{name("L\'Arnaqueur","red")}')]
L+=info('Île Arnaque','Le coffre légendaire est nul. Le vrai trésor est caché sous terre...','red')
add('arnaque',L)
# 12 badlands
L=base('red_sand','orange_terracotta','terracotta',8,'badlands')
for x,z in [(-4,-3),(4,3)]: L.append(fill((x,1,z),(x,3,z),'cactus'))
L+=[sb((2,1,-4),'dead_bush'),chest((-3,1,2),'cheval','Coffre du cowboy','east','gold'),
    summon('horse',(1,1,1),f'Tame:1b,{name("Éclair","gold")},{KEEP}')]
L+=info('Île Badlands','Un cheval apprivoisé t\'attend. Éclair, c\'est son nom.','gold')
add('badlands',L)
# 13 marais
L=base('grass_block','dirt','stone',8,'swamp')
L+=tree(-4,-3,4)+[fill((2,0,2),(4,0,4),'water'),sb((3,1,3),'lily_pad'),chest((-3,1,3),'marais','Coffre du marais','east','dark_green'),
    summon('witch',(-2,1,-2),f'{name("Bernadette","dark_purple")},{KEEP}')]
for p in [(0,1,0),(1,1,-1),(-1,1,1)]: L.append(summon('slime',p,'Size:1'))
L+=info('Île Marais','Bernadette la sorcière et ses petits slimes.','dark_green')
add('marais',L)
# 14 nether
L=base('netherrack','netherrack','blackstone',8,'nether_wastes')
L+=[fill((2,0,-4),(4,0,-2),'lava'),fill((-4,0,2),(-2,0,4),'soul_sand'),fill((-4,1,-3),(-4,4,-3),'nether_bricks'),
    chest((-3,1,0),'nether','Coffre infernal','east','red'),
    summon('blaze',(0,2,0),f'attributes:[{{id:"minecraft:max_health",base:60}}],Health:60f,{name("Blaze Furieux","gold")},{KEEP}')]
L+=info('Île Nether','Un mini Nether, du feu, et un blaze très en colère.','red')
L.append(snd('entity.blaze.ambient',1,0.7))
add('nether',L)
# 15 savane
L=base('grass_block','dirt','stone',8,'savanna')
for x,z in [(-4,-3),(4,-4)]:
    L+=[fill((x,1,z),(x,4,z),'acacia_log'),fill((x-2,5,z-2),(x+2,5,z+2),'acacia_leaves[persistent=true]'),fill((x-1,6,z-1),(x+1,6,z+1),'acacia_leaves[persistent=true]')]
L+=[chest((3,1,2),'loterie','Coffre loto'),summon('llama',(0,1,0),f'{name("Lama Cracheur","yellow")},{KEEP}'),
    summon('llama',(-2,1,3),f'{name("Lama Cracheur 2","yellow")},{KEEP}')]
L+=info('Île Savane','Deux lamas qui crachent. Garde ton calme.','yellow')
add('savane',L)
# 16 glace
L=base('snow_block','packed_ice','blue_ice',8,'ice_spikes')
for x,z in [(-4,-3),(4,-4),(3,4)]:
    L+=[fill((x,1,z),(x,7,z),'packed_ice'),fill((x-1,1,z-1),(x+1,2,z+1),'packed_ice'),sb((x,8,z),'blue_ice')]
L+=[chest((-3,1,2),'glace','Coffre glacé','east','aqua'),summon('polar_bear',(0,1,0),f'{name("Gérard Glaçon","aqua")},{KEEP}')]
L+=info('Île Glace','Gérard Glaçon l\'ours polaire garde les lieux.','aqua')
add('glace',L)
# 17 creeper party
L=base('grass_block','dirt','stone',8,'plains')
L.append(chest((0,1,0),'correct','Coffre (bonne chance)','south'))
for p in [(3,1,3),(-3,1,3),(3,1,-3),(-3,1,-3),(5,1,0),(-5,1,0)]: L.append(summon('creeper',p,f'{name("Bonjour","green")},{KEEP}'))
L+=info('Île Creeper Party','Six creepers très sympathiques. Surtout reste calme.','green')
L.append(snd('entity.creeper.primed',1,1))
add('creeper',L)
# 18 squelettes
L=base('grass_block','dirt','stone',8,'plains')
for x,z in [(-4,-3),(4,3)]: L+=tree(x,z,5)
L.append(chest((0,1,0),'archer','Coffre de Robin','south','green'))
for p in [(3,1,-3),(-3,1,3),(4,1,0),(-4,1,-1)]:
    L.append(summon('skeleton',p,f'equipment:{{mainhand:{{id:"minecraft:bow",count:1}},head:{{id:"minecraft:iron_helmet",count:1}}}},{name("Robin","green")},{KEEP}'))
L+=info('Île Robin des Bois','Quatre archers. Une seule règle : cours.','green')
add('squelettes',L)
# 19 lave
L=base('obsidian','obsidian','blackstone',8,None)
L+=[fill((-5,0,-5),(5,0,5),'lava'),fill((-1,0,-1),(1,0,1),'obsidian'),chest((0,1,0),'lave','Coffre de feu','south','red'),
    summon('magma_cube',(3,1,3),f'Size:2,{name("Gérard le Magma","red")},{KEEP}')]
L+=info('Île Lave','Le coffre est au milieu de la lave. Tu as pris un seau d\'eau, j\'espère ?','red')
add('lave',L)
# 20 village
L=base('grass_block','dirt','stone',9,'plains')
L+=house(-4,-3)+house(4,3)
L+=[chest((-5,1,-4),'village','Coffre du village','east','green'),
    summon('villager',(-4,1,-3),f'VillagerData:{{type:"minecraft:plains",profession:"minecraft:farmer",level:3}},NoAI:1b,Invulnerable:1b,{name("Gaston","green")}'),
    summon('villager',(4,1,3),f'VillagerData:{{type:"minecraft:plains",profession:"minecraft:toolsmith",level:3}},NoAI:1b,Invulnerable:1b,{name("Marcel","green")}'),
    summon('iron_golem',(0,1,0),KEEP)]
L+=info('Île Village','Un mini village avec deux villageois commerçants.','green')
add('village',L)
# 21 end
L=base('end_stone','end_stone','end_stone',8,'the_end')
for x,z in [(-4,-3),(4,-4),(3,4)]: L.append(fill((x,1,z),(x,6,z),'obsidian'))
L+=[sb((-3,1,3),'chorus_plant'),sb((-3,2,3),'chorus_plant'),sb((-3,3,3),'chorus_flower'),
    chest((0,1,0),'end','Coffre de l\'End','south','light_purple'),
    summon('enderman',(2,1,2),f'{name("Slender","dark_purple")},{KEEP}'),summon('enderman',(-2,1,-2),f'{name("Slender 2","dark_purple")},{KEEP}')]
L+=info('Île End','Deux endermen. Ne les regarde PAS dans les yeux.','dark_purple')
L.append(snd('entity.enderman.scream',1,0.6))
add('end',L)
# 22 boss
L=base('stone_bricks','deepslate_bricks','deepslate',9,None)
for x,z in [(5,5),(-5,5),(5,-5),(-5,-5)]: L.append(fill((x,1,z),(x,4,z),'polished_blackstone_bricks'))
L+=[chest((0,1,7),'diamants','Butin de Gérard','north','red'),
    summon('ravager',(0,1,0),f'attributes:[{{id:"minecraft:max_health",base:200}},{{id:"minecraft:scale",base:1.6}}],Health:200f,DeathLootTable:"iles:drop/boss",{name("GÉRARD LE RAVAGEUR","dark_red")},{KEEP}'),
    summon('vindicator',(3,1,0),f'equipment:{{mainhand:{{id:"minecraft:iron_axe",count:1}}}},{KEEP}'),
    summon('vindicator',(-3,1,0),f'equipment:{{mainhand:{{id:"minecraft:iron_axe",count:1}}}},{KEEP}')]
L+=info('ÎLE BOSS','GÉRARD LE RAVAGEUR (200 PV) est là. Bonne chance.','dark_red')
L.append(snd('entity.wither.spawn',0.8,1))
add('boss',L)
# 23 loto
L=base('yellow_concrete','orange_concrete','stone',7,None)
for i,p in enumerate([(-4,1,0),(-2,1,-3),(0,1,0),(2,1,3),(4,1,0)],1): L.append(chest(p,'loterie',f'Coffre n°{i}','south'))
L+=info('Île Casino','5 coffres loto. Prie.','gold')
add('loto',L)
# 24 forteresse
L=base('nether_bricks','nether_bricks','netherrack',8,'nether_wastes')
L+=[fill((-3,0,-3),(3,4,3),'nether_bricks','hollow'),sb((0,1,3),'air'),sb((0,2,3),'air'),
    chest((-2,1,-2),'forteresse','Coffre de la forteresse','east','red')]
for p in [(1,1,-1),(-1,1,1),(0,1,0)]: L.append(summon('wither_skeleton',p,KEEP))
L+=info('Île Forteresse','Trois squelettes wither gardent la forteresse.','dark_gray')
add('forteresse',L)
# 25 zombies
L=base('grass_block','dirt','stone',8,'dark_forest')
for x,z in [(-4,-3),(4,-4),(-4,4)]: L+=tree(x,z,6,'dark_oak_log','dark_oak_leaves')
L.append(chest((3,1,3),'zombie','Coffre de survie','west','dark_green'))
for p in [(0,1,0),(2,1,-2),(-2,1,2),(3,1,0),(-3,1,-1),(1,1,4),(-1,1,-4)]:
    L.append(summon('zombie',p,f'equipment:{{head:{{id:"minecraft:iron_helmet",count:1}}}},{KEEP}'))
for p in [(1,1,1),(-1,1,-1)]: L.append(summon('zombie',p,f'IsBaby:1b,equipment:{{head:{{id:"minecraft:iron_helmet",count:1}}}},{name("Mini-Gérard","green")},{KEEP}'))
L+=info('Île Zombies','Sept zombies et deux bébés zombies. Bon courage.','dark_green')
add('zombies',L)
# 26 panda
L=base('grass_block','dirt','stone',8,'bamboo_jungle')
for _ in range(10):
    x,z=random.randint(-5,5),random.randint(-5,5)
    if abs(x)<2 and abs(z)<2: continue
    L.append(fill((x,1,z),(x,random.randint(4,7),z),'bamboo'))
L+=[chest((0,1,0),'panda','Coffre à bambou','south','green'),
    summon('panda',(2,1,2),f'{name("Po","white")},{KEEP}'),summon('panda',(-2,1,-2),f'{name("Pao","white")},{KEEP}')]
L+=info('Île Panda','Beaucoup de bambou. Et deux pandas adorables.','green')
add('panda',L)
# 27 araignees
L=base('stone','cobblestone','stone',8,None)
for _ in range(25): L.append(sb((random.randint(-6,6),1,random.randint(-6,6)),'cobweb'))
L.append(chest((0,1,0),'araignee','Coffre toile','south','gray'))
for p in [(3,1,3),(-3,1,-3),(3,1,-3)]: L.append(summon('spider',p,f'{name("Gérard","dark_gray")},{KEEP}'))
for i in range(6): L.append(summon('cave_spider',(random.randint(-4,4),1,random.randint(-4,4)),KEEP))
L+=info('Île Araignées','Des toiles partout. Des pattes partout.','dark_gray')
add('araignees',L)
# 28 zoo chaos
L=base('grass_block','dirt','stone',8,'flower_forest')
for _ in range(18): L.append(sb((random.randint(-6,6),1,random.randint(-6,6)),random.choice(['poppy','dandelion','cornflower','azure_bluet','oxeye_daisy'])))
L+=[chest((0,1,0),'loterie','Coffre loto 1'),chest((2,1,2),'loterie','Coffre loto 2','north')]
for e in ['pig','cow','sheep','cat','rabbit','fox','goat','llama','wolf','horse']:
    L.append(summon(e,(random.randint(-4,4),1,random.randint(-4,4)),f'{name("Gérard","yellow")},{KEEP}'))
L+=info('Île Zoo du Chaos','Dix animaux, tous s\'appellent Gérard.','yellow')
add('zoo',L)
# 29 portail (finale)
L=base('end_stone_bricks','end_stone_bricks','end_stone',8,'the_end')
for x in (-1,0,1):
    L+=[sb((x,0,-2),'end_portal_frame[eye=false,facing=south]'),sb((x,0,2),'end_portal_frame[eye=false,facing=north]')]
for z in (-1,0,1):
    L+=[sb((-2,0,z),'end_portal_frame[eye=false,facing=east]'),sb((2,0,z),'end_portal_frame[eye=false,facing=west]')]
for p in [(-5,1,-5),(5,1,-5),(-5,1,5),(5,1,5)]: L.append(sb(p,'end_rod[facing=up]'))
L+=[chest((0,1,5),'portail','Les 12 yeux d\'Ender','north','light_purple'),
    sign((0,1,-5),['PORTAIL','VERS L\'END','Pose les 12','yeux !'],0,'dark_purple')]
L+=info('ÎLE PORTAIL','Pose les 12 yeux et va battre l\'Ender Dragon !','light_purple')
L.append(snd('entity.ender_dragon.growl',1,1))
add('portail',L)

N=len(ISLANDS)  # includes portail at the end
for i,(k,lines) in enumerate(ISLANDS,1): wf(f'island/i{i:02d}',lines)
RANDOM_MAX=N-1  # after final, random among all but portal

# ---------- dispatch ----------
wf('island/dispatch',[f'execute if score #isle iles matches {i} run function iles:island/i{i:02d}' for i in range(1,N+1)])

# ---------- core ----------
wf('load',[
 'scoreboard objectives add iles dummy',
 'scoreboard players set #c20 iles 20','scoreboard players set #c8 iles 8','scoreboard players set #c4 iles 4','scoreboard players set #c40 iles 40',
 'execute unless score #duree iles matches 1.. run scoreboard players set #duree iles 6000',
 'execute unless score #on iles matches 0..1 run scoreboard players set #on iles 0',
 'bossbar add iles:next {"text":"Prochaine île"}',
 'bossbar set iles:next color yellow','bossbar set iles:next visible false',
 'tellraw @a [{"text":"[Îles] ","color":"gold","bold":true},{"text":"Datapack chargé. Lance-le avec /function iles:start","color":"yellow"}]'])
wf('start',[
 'scoreboard players set #c20 iles 20','scoreboard players set #c8 iles 8','scoreboard players set #c4 iles 4','scoreboard players set #c40 iles 40',
 'execute unless score #duree iles matches 1.. run scoreboard players set #duree iles 6000',
 'scoreboard players set #on iles 0','kill @e[type=marker,tag=iles_sink]',
 'forceload add -16 -16 15 15','schedule function iles:start2 10t'])
wf('start2',[
 'execute positioned 0 100 0 run function iles:island/start',
 'forceload remove -16 -16 15 15',
 'setworldspawn 0 101 0','execute as @a run spawnpoint @s 0 101 0','tp @a 0 101 0',
 'scoreboard players set #jour iles 1','scoreboard players operation #timer iles = #duree iles',
 'scoreboard players set #t20 iles 0','scoreboard players set #sinkt iles 0','scoreboard players set #glue iles 0','scoreboard players set #on iles 1',
 'bossbar set iles:next visible true',
 'title @a times 10 70 20','title @a subtitle {"text":"1 île. Le reste, c\'est du vide.","color":"gray"}',
 'title @a title {"text":"JOUR 1","color":"gold","bold":true}',
 snd('ui.toast.challenge_complete'),
 'tellraw @a [{"text":"[Îles] ","color":"gold","bold":true},{"text":"Chaque jour, une nouvelle île apparaît. Survis, construis des ponts et va battre l\'Ender Dragon !","color":"yellow"}]'])
wf('stop',['scoreboard players set #on iles 0','bossbar set iles:next visible false','tellraw @a {"text":"[Îles] Arrêté.","color":"red"}'])
wf('skip',['function iles:next_island'])
wf('tick',[
 'execute if score #on iles matches 1 run function iles:running',
 'scoreboard players add #sinkt iles 1',
 'execute if score #sinkt iles matches 30.. run function iles:sink_tick'])
wf('running',[
 'scoreboard players remove #timer iles 1',
 'execute store result bossbar iles:next value run scoreboard players get #timer iles',
 'scoreboard players add #t20 iles 1',
 'execute if score #t20 iles matches 20.. run function iles:every_second',
 'execute if score #timer iles matches ..0 run function iles:next_island'])
wf('every_second',[
 'scoreboard players set #t20 iles 0',
 'scoreboard players operation #sec iles = #timer iles','scoreboard players operation #sec iles /= #c20 iles',
 'execute store result bossbar iles:next max run scoreboard players get #duree iles',
 'bossbar set iles:next players @a',
 'bossbar set iles:next name [{"text":"JOUR ","color":"gold","bold":true},{"score":{"name":"#jour","objective":"iles"},"color":"yellow","bold":true},{"text":"   |   Prochaine île dans ","color":"white"},{"score":{"name":"#sec","objective":"iles"},"color":"aqua"},{"text":"s","color":"aqua"}]',
 'execute if score #sec iles matches 1..5 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.6',
 'execute if score #sec iles matches 1..5 run title @a actionbar [{"text":"Nouvelle île dans ","color":"red"},{"score":{"name":"#sec","objective":"iles"},"color":"yellow"}]'])
wf('sink_tick',['scoreboard players set #sinkt iles 0','execute as @e[type=marker,tag=iles_sink] at @s run function iles:sink_step'])
wf('sink_step',[
 'clone ~-9 ~-8 ~-9 ~9 ~9 ~9 ~-9 ~-9 ~-9 replace force',
 'playsound minecraft:block.water.ambient ambient @a ~ ~ ~ 3 0.6',
 'scoreboard players add @s iles 1','tp @s ~ ~-1 ~',
 'execute if score @s iles matches 45.. run kill @s'])
mx=N  # last id
wf('next_island',[
 'scoreboard players add #jour iles 1','scoreboard players operation #timer iles = #duree iles',
 f'execute if score #jour iles matches 2..{N+1} run scoreboard players operation #isle iles = #jour iles',
 f'execute if score #jour iles matches 2..{N+1} run scoreboard players remove #isle iles 1',
 f'execute if score #jour iles matches {N+2}.. store result score #isle iles run random value 1..{RANDOM_MAX}',
 'scoreboard players set #mode iles 0',
 'execute if score #jour iles matches 6 run scoreboard players set #mode iles 1',
 'execute if score #jour iles matches 11 run scoreboard players set #mode iles 2',
 'execute if score #jour iles matches 16 run scoreboard players set #mode iles 1',
 'execute if score #jour iles matches 21 run scoreboard players set #mode iles 2',
 'execute if score #jour iles matches 26 run scoreboard players set #mode iles 1',
 f'execute if score #jour iles matches {N+2}.. store result score #r iles run random value 1..100',
 f'execute if score #jour iles matches {N+2}.. if score #r iles matches 1..12 run scoreboard players set #mode iles 1',
 f'execute if score #jour iles matches {N+2}.. if score #r iles matches 13..24 run scoreboard players set #mode iles 2',
 'execute if score #mode iles matches 0 run function iles:pos_normal',
 'execute if score #mode iles matches 1 run function iles:pos_head',
 'execute if score #mode iles matches 2 run function iles:pos_glued',
 'function iles:queue'])
dirs=[(0,-1),(1,0),(0,1),(-1,0),(1,-1),(1,1),(-1,1),(-1,-1)]
pn=['scoreboard players operation #idx iles = #jour iles','scoreboard players remove #idx iles 2',
    'scoreboard players operation #dir iles = #idx iles','scoreboard players operation #dir iles %= #c8 iles',
    'scoreboard players operation #ring iles = #idx iles','scoreboard players operation #ring iles /= #c8 iles','scoreboard players add #ring iles 1']
for d,(dx,dz) in enumerate(dirs):
    pn.append(f'execute if score #dir iles matches {d} run scoreboard players set #dx iles {dx}')
    pn.append(f'execute if score #dir iles matches {d} run scoreboard players set #dz iles {dz}')
pn+=['scoreboard players operation #x iles = #dx iles','scoreboard players operation #x iles *= #ring iles','scoreboard players operation #x iles *= #c40 iles',
     'scoreboard players operation #z iles = #dz iles','scoreboard players operation #z iles *= #ring iles','scoreboard players operation #z iles *= #c40 iles',
     'scoreboard players set #y iles 100']
wf('pos_normal',pn)
wf('pos_head',['tag @a remove iles_target','tag @r add iles_target',
 'execute store result score #x iles run data get entity @a[tag=iles_target,limit=1] Pos[0]',
 'execute store result score #y iles run data get entity @a[tag=iles_target,limit=1] Pos[1]',
 'execute store result score #z iles run data get entity @a[tag=iles_target,limit=1] Pos[2]',
 'scoreboard players add #y iles 14','tag @a remove iles_target'])
pg=['scoreboard players add #glue iles 1','scoreboard players operation #g iles = #glue iles','scoreboard players operation #g iles %= #c4 iles','scoreboard players set #y iles 100']
for g,(x,z) in enumerate([(20,0),(0,20),(-20,0),(0,-20)]):
    pg.append(f'execute if score #g iles matches {g} run scoreboard players set #x iles {x}')
    pg.append(f'execute if score #g iles matches {g} run scoreboard players set #z iles {z}')
wf('pos_glued',pg)
wf('queue',[
 'execute store result storage iles:tmp x int 1 run scoreboard players get #x iles',
 'execute store result storage iles:tmp y int 1 run scoreboard players get #y iles',
 'execute store result storage iles:tmp z int 1 run scoreboard players get #z iles',
 'function iles:forceload_add with storage iles:tmp',
 'schedule function iles:finish 10t'])
wf('forceload_add',['$execute positioned $(x) $(y) $(z) run forceload add ~-13 ~-13 ~13 ~13'])
wf('forceload_remove',['$execute positioned $(x) $(y) $(z) run forceload remove ~-13 ~-13 ~13 ~13'])
wf('place',['$execute positioned $(x) $(y) $(z) run function iles:island/dispatch'])
wf('finish',['function iles:place with storage iles:tmp','function iles:announce','function iles:forceload_remove with storage iles:tmp'])
wf('announce',[
 'title @a times 10 70 20',
 'title @a title [{"text":"JOUR ","color":"gold","bold":true},{"score":{"name":"#jour","objective":"iles"},"color":"yellow","bold":true}]',
 snd('ui.toast.challenge_complete',1,1),snd('entity.lightning_bolt.thunder',0.5,1),snd('block.beacon.activate',0.8,1),
 'execute if score #mode iles matches 0 run tellraw @a [{"text":"Position : X ","color":"gray"},{"nbt":"x","storage":"iles:tmp","color":"white"},{"text":"  Z ","color":"gray"},{"nbt":"z","storage":"iles:tmp","color":"white"}]',
 'execute if score #mode iles matches 1 run tellraw @a {"text":"ATTENTION : l\'île est apparue AU-DESSUS D\'UN JOUEUR !","color":"red","bold":true}',
 'execute if score #mode iles matches 2 run tellraw @a {"text":"L\'île est apparue COLLÉE à la base !","color":"green","bold":true}'])
wf('help',[
 'tellraw @a [{"text":"[Îles] ","color":"gold","bold":true},{"text":"/function iles:start | iles:stop | iles:skip","color":"yellow"}]',
 'tellraw @a {"text":"Durée d\'un jour (ticks) : /scoreboard players set #duree iles 6000","color":"gray"}'])

wj('minecraft/tags/function/load',{"values":["iles:load"]})
wj('minecraft/tags/function/tick',{"values":["iles:tick"]})
with open(f'{ROOT}/pack.mcmeta','w') as f:
    json.dump({"pack":{"description":"Îles du Chaos - une nouvelle île chaque jour (MC 26.2)","min_format":[75,0],"max_format":[199,0]}},f,ensure_ascii=False,indent=1)

# ================= CATASTROPHES =================
P='@a[gamemode=!spectator]'
os.makedirs(f'{FN}/ev',exist_ok=True)
def head(title,sub,col,desc,sounds=()):
    L=['title @a times 5 50 15',
       f'title @a subtitle {{"text":"{sub}","color":"gray"}}',
       f'title @a title {{"text":"{title}","color":"{col}","bold":true}}',
       f'tellraw @a [{{"text":"[CATASTROPHE] ","color":"dark_red","bold":true}},{{"text":"{desc}","color":"red"}}]']
    for s in sounds: L.append(snd(*s))
    return L
def Pm(ent,dx,dy,dz,nbt=''):
    return f'execute as {P} at @s run summon minecraft:{ent} {R(dx)} {R(dy)} {R(dz)}'+(f' {{{nbt}}}' if nbt else '')
def eff(e,t,a=0,hide=True): return f'effect give {P} minecraft:{e} {t} {a}'+(' true' if hide else '')
def sc(n,v): return f'scoreboard players set #{n} iles {v}'
ring=[(4,0),(-4,0),(0,4),(0,-4),(3,3),(-3,-3),(3,-3),(-3,3)]
HELM='equipment:{head:{id:"minecraft:iron_helmet",count:1}}'
def rnd(n,a,b): return [(random.randint(a,b),random.randint(a,b)) for _ in range(n)]
EV={}
EV[1]=head('PLUIE DE MÉTÉORITES','Mets-toi à l\'abri !','dark_red','Des météorites s\'écrasent partout !',[('entity.ender_dragon.growl',0.6,1),('entity.wither.spawn',0.5,1)])+[sc('meteor',160)]
EV[2]=head('MÉTÉORITE GÉANTE','Impact imminent','dark_red','Une énorme météorite arrive sur chaque joueur !',[('entity.wither.spawn',0.8,0.7)])+[f'execute as {P} at @s run function iles:ev/big_roll']
EV[3]=head('INONDATION','L\'eau monte...','blue','Le niveau de l\'eau monte autour de vous !',[('ambient.underwater.enter',1,1),('entity.dolphin.splash',1,1)])+[f'execute as {P} at @s run summon minecraft:marker ~ ~ ~ {{Tags:["iles_flood"]}}']
EV[4]=head('PLUIE DE TNT','Ça va faire boum','red','Du TNT tombe du ciel !',[('entity.tnt.primed',1,1)])+[sc('tnt',120)]
EV[5]=head('PLUIE D\'ENCLUMES','Regarde en l\'air','gray','Des enclumes tombent du ciel !',[('block.anvil.land',1,0.8)])+[sc('anvil',120)]
EV[6]=head('PLUIE DE PASTÈQUES','Oui, des pastèques','green','Il pleut des pastèques.',[('entity.villager.celebrate',1,1)])+[sc('melon',140)]
EV[7]=head('PLUIE DE POULES','Cot cot cot','yellow','Des poules tombent du ciel !',[('entity.chicken.ambient',1,0.7)])+[Pm('chicken',dx,random.randint(14,24),dz) for dx,dz in rnd(20,-6,6)]
EV[8]=head('PLUIE DE CREEPERS','Chut...','green','Des creepers tombent du ciel !',[('entity.creeper.primed',1,1)])+[Pm('creeper',dx,14,dz) for dx,dz in rnd(6,-6,6)]
EV[9]=head('PLUIE DE VACHES','Meuh','white','Il pleut des vaches !',[('entity.cow.ambient',1,0.6)])+[Pm('cow',dx,15,dz) for dx,dz in rnd(8,-6,6)]
EV[10]=head('TEMPÊTE','La foudre frappe','dark_purple','Un orage violent s\'abat sur vous !',[('entity.lightning_bolt.thunder',1,1)])+['weather thunder 1200',sc('storm',400)]
EV[11]=head('TREMBLEMENT DE TERRE','Tout tremble','gold','La terre tremble !',[('entity.generic.explode',0.6,0.5)])+[sc('quake',160),eff('slowness',8,1),eff('nausea',8)]
EV[12]=head('LE SOL S\'EFFONDRE','Bouge ! Vite !','gold','Le sol va s\'effondrer sous vos pieds dans 3 secondes !',[('block.gravel.break',1,0.5)])+[f'execute as {P} at @s run particle minecraft:smoke ~ ~ ~ 1 0.1 1 0.05 30','schedule function iles:ev/collapse 60t']
EV[13]=head('PLUIE DE LAVE','Attention à ta tête','gold','De la lave tombe sur vous !',[('block.lava.pop',1,1)])+[f'execute as {P} at @s run setblock {C(dx,5,dz)} lava' for dx,dz in [(2,0),(-2,0),(0,2),(0,-2),(3,3),(-3,-3)]]+['schedule function iles:ev/lava_clean 80t']
EV[14]=head('TORNADE','Accroche-toi','white','Une tornade vous emporte !',[('entity.phantom.flap',1,0.6)])+[sc('tornado',100)]
EV[15]=head('CATAPULTE','Décollage !','aqua','Vous êtes projetés dans les airs !',[('entity.firework_rocket.launch',1,1)])+[eff('levitation',2,12),eff('slow_falling',25)]
EV[16]=head('GRAVITÉ LUNAIRE','Boing boing','light_purple','La gravité a disparu !',[('entity.player.levelup',1,1)])+[eff('jump_boost',40,6),eff('slow_falling',40)]
EV[17]=head('MODE GÉANT','Tu es ENORME','dark_green','Vous êtes devenus des géants pendant 30 secondes !',[('entity.ravager.roar',1,0.7)])+[f'execute as {P} run attribute @s minecraft:scale base set 3','schedule function iles:ev/reset_scale 600t']
EV[18]=head('MODE MINI','Tu es minuscule','yellow','Vous avez rétréci pendant 30 secondes !',[('entity.puffer_fish.blow_up',1,1.5)])+[f'execute as {P} run attribute @s minecraft:scale base set 0.35','schedule function iles:ev/reset_scale 600t']
EV[19]=head('BLIZZARD','Brrr','aqua','Une tempête de neige vous gèle !',[('entity.player.hurt_freeze',1,1)])+[sc('blizzard',200),eff('slowness',12,2)]
EV[20]=head('CANICULE','Il fait chaud','red','Une vague de chaleur vous épuise !',[('entity.blaze.ambient',1,0.6)])+[eff('hunger',30,3),eff('weakness',30,1),eff('mining_fatigue',30)]
EV[21]=head('NUAGE TOXIQUE','Retiens ta respiration','dark_green','Un nuage toxique vous empoisonne !',[('entity.witch.ambient',1,0.8)])+[eff('poison',10,1),eff('nausea',10)]
EV[22]=head('NUIT NOIRE','Plus rien ne se voit','dark_gray','La nuit tombe d\'un coup !',[('ambient.cave',1,1)])+['time set midnight',eff('darkness',15),eff('blindness',3)]
EV[23]=head('INVASION DE ZOMBIES','Ils arrivent','dark_green','Des zombies apparaissent autour de vous !',[('entity.zombie.ambient',1,0.7)])+[Pm('zombie',dx,0,dz,HELM) for dx,dz in ring[:6]]
EV[24]=head('ESCADRON DE PHANTOMS','Ils volent','dark_blue','Des phantoms plongent sur vous !',[('entity.phantom.ambient',1,0.8)])+[Pm('phantom',dx,8,dz,'Size:1') for dx,dz in ring[:4]]
EV[25]=head('RAID','Les illagers arrivent','dark_red','Des vindicateurs attaquent !',[('event.raid.horn',1,1)])+[Pm('vindicator',dx,0,dz,'equipment:{mainhand:{id:"minecraft:iron_axe",count:1}}') for dx,dz in ring[:4]]
EV[26]=head('INVASION DE SLIMES','Splotch','green','Des slimes géants envahissent tout !',[('entity.slime.squish',1,0.7)])+[Pm('slime',dx,0,dz,'Size:2') for dx,dz in ring]
EV[27]=head('MODE SONIC','Gotta go fast','aqua','Vitesse et saut x10 pendant 30 secondes !',[('entity.player.levelup',1,1.5)])+[eff('speed',30,6),eff('jump_boost',30,3),eff('haste',30,2)]
EV[28]=head('PLUIE DE DIAMANTS','Cadeau !','aqua','Des diamants tombent du ciel (bonne surprise) !',[('entity.player.levelup',1,1)])+[Pm('item',dx,10,dz,'Item:{id:"minecraft:diamond",count:1}') for dx,dz in rnd(6,-5,5)]+[Pm('item',dx,10,dz,'Item:{id:"minecraft:emerald",count:2}') for dx,dz in rnd(3,-5,5)]+[Pm('item',dx,10,dz,'Item:{id:"minecraft:golden_apple",count:1}') for dx,dz in rnd(3,-5,5)]
EV[29]=head('BÉNÉDICTION','Prends un câlin','light_purple','Régénération, absorption et satiété !',[('entity.player.levelup',1,0.8),('block.beacon.power_select',1,1)])+[eff('regeneration',20,2),eff('absorption',40,3),eff('saturation',5,4)]
EV[30]=head('RETOUR À LA BASE','Surprise !','light_purple','Tout le monde est téléporté à l\'île de départ !',[('entity.enderman.teleport',1,1)])+[f'tp {P} 0 101 0']
NEV=len(EV)
for n,l in EV.items(): wf(f'ev/e{n:02d}',l)

wf('ev/roll',[f'execute store result score #e iles run random value 1..{NEV}','scoreboard players operation #evtimer iles = #evduree iles']+
   [f'execute if score #e iles matches {n} run function iles:ev/e{n:02d}' for n in range(1,NEV+1)])
wf('ev/rand_dxdz',['execute store result storage iles:ev dx int 1 run random value -10..10','execute store result storage iles:ev dz int 1 run random value -10..10'])
wf('ev/fall_roll',['function iles:ev/rand_dxdz','function iles:ev/fall_at with storage iles:ev'])
wf('ev/fall_at',['$summon minecraft:falling_block ~$(dx) ~$(h) ~$(dz) {BlockState:{Name:"minecraft:$(b)"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:$(amt)f,FallHurtMax:80,Glowing:1b}'])
wf('ev/tnt_at',['$summon minecraft:tnt ~$(dx) ~$(h) ~$(dz) {fuse:$(fuse)}'])
wf('ev/bolt_at',['$summon minecraft:lightning_bolt ~$(dx) ~ ~$(dz)'])
wf('ev/big_roll',['function iles:ev/rand_dxdz','function iles:ev/big_at with storage iles:ev'])
wf('ev/big_at',['$summon minecraft:falling_block ~$(dx) ~40 ~$(dz) {BlockState:{Name:"minecraft:magma_block"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtAmount:6.0f,FallHurtMax:100,Glowing:1b}']+
   ['$summon minecraft:tnt ~$(dx) ~40 ~$(dz) {fuse:56}']*5)
def setfall(b,h,amt): return [f'data modify storage iles:ev b set value "{b}"',f'data modify storage iles:ev h set value {h}',f'data modify storage iles:ev amt set value "{amt}"']
wf('ev/r_meteor',setfall('magma_block',28,'4.0')+['function iles:ev/fall_roll','data modify storage iles:ev fuse set value 45',
   'execute store result score #rr2 iles run random value 1..2','execute if score #rr2 iles matches 1 run function iles:ev/tnt_at with storage iles:ev'])
wf('ev/r_tnt',['data modify storage iles:ev h set value 25','data modify storage iles:ev fuse set value 60','function iles:ev/rand_dxdz','function iles:ev/tnt_at with storage iles:ev'])
wf('ev/r_anvil',setfall('anvil',25,'3.0')+['function iles:ev/fall_roll'])
wf('ev/r_melon',setfall('melon',22,'1.0')+['function iles:ev/fall_roll'])
wf('ev/r_bolt',['function iles:ev/rand_dxdz','function iles:ev/bolt_at with storage iles:ev'])
def trig(cnt,div,fn): return [f'scoreboard players remove #{cnt} iles 1',f'execute store result score #rr iles run random value 1..{div}',f'execute if score #rr iles matches 1 as {P} at @s run function iles:ev/{fn}']
wf('ev/t_meteor',trig('meteor',14,'r_meteor'))
wf('ev/t_tnt',trig('tnt',8,'r_tnt'))
wf('ev/t_anvil',trig('anvil',6,'r_anvil'))
wf('ev/t_melon',trig('melon',3,'r_melon'))
wf('ev/t_storm',trig('storm',30,'r_bolt'))
wf('ev/t_quake',['scoreboard players remove #quake iles 1','scoreboard players operation #qm iles = #quake iles','scoreboard players operation #qm iles %= #c2 iles',
  f'execute if score #qm iles matches 0 as {P} at @s run tp @s ~ ~ ~ ~6 ~3',f'execute if score #qm iles matches 1 as {P} at @s run tp @s ~ ~ ~ ~-6 ~-3',
  f'execute as {P} at @s run particle minecraft:poof ~ ~ ~ 1 0.1 1 0.05 3',
  'scoreboard players operation #q10 iles = #quake iles','scoreboard players operation #q10 iles %= #c10 iles',
  'execute if score #q10 iles matches 0 as @a at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 1 0.5'])
wf('ev/t_tornado',['scoreboard players remove #tornado iles 1',f'execute as {P} at @s run tp @s ~ ~0.3 ~ ~25 ~',
  f'execute as {P} at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.05 3',
  f'execute if score #tornado iles matches 0 run effect give {P} minecraft:slow_falling 20 0 true'])
wf('ev/t_blizzard',['scoreboard players remove #blizzard iles 1','scoreboard players operation #bm iles = #blizzard iles','scoreboard players operation #bm iles %= #c20 iles',
  f'execute if score #bm iles matches 0 as {P} run damage @s 1 minecraft:freeze',
  f'execute as {P} at @s run particle minecraft:snowflake ~ ~1 ~ 1 0.5 1 0.05 4'])
wf('ev/collapse',[f'execute as {P} at @s run fill ~-2 ~-1 ~-2 ~2 ~-3 ~2 air','execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.6'])
wf('ev/lava_clean',[f'execute as {P} at @s run fill ~-6 ~ ~-6 ~6 ~9 ~6 air replace lava'])
wf('ev/reset_scale',[f'execute as @a run attribute @s minecraft:scale base set 1','tellraw @a {"text":"Taille normale retrouvée.","color":"gray"}'])
wf('ev/t_flood',['scoreboard players add #fl iles 1','execute if score #fl iles matches 20.. run function iles:ev/flood_all'])
wf('ev/flood_all',['scoreboard players set #fl iles 0','execute as @e[type=marker,tag=iles_flood] at @s run function iles:ev/flood_step'])
wf('ev/flood_step',['scoreboard players add @s iles 1','execute if score @s iles matches ..6 run fill ~-8 ~ ~-8 ~8 ~ ~8 water replace air','execute if score @s iles matches ..6 run tp @s ~ ~1 ~',
  'execute if score @s iles matches 14 run fill ~-8 ~-6 ~-8 ~8 ~ ~8 air replace water','execute if score @s iles matches 14 run kill @s'])
wf('cata_now',['function iles:ev/roll'])
wf('cata_on',['scoreboard players set #evon iles 1','bossbar set iles:cata visible true','tellraw @a {"text":"[Îles] Catastrophes activées.","color":"red"}'])
wf('cata_off',['scoreboard players set #evon iles 0','bossbar set iles:cata visible false','tellraw @a {"text":"[Îles] Catastrophes désactivées.","color":"green"}'])
counters=['meteor','tnt','anvil','melon','storm','quake','tornado','blizzard']
RESET=[sc(c,0) for c in counters]+['kill @e[type=marker,tag=iles_flood]',f'execute as @a run attribute @s minecraft:scale base set 1']
CONST=['scoreboard players set #c20 iles 20','scoreboard players set #c8 iles 8','scoreboard players set #c4 iles 4','scoreboard players set #c40 iles 40','scoreboard players set #c2 iles 2','scoreboard players set #c10 iles 10']
DEF=['execute unless score #duree iles matches 1.. run scoreboard players set #duree iles 6000','execute unless score #evduree iles matches 1.. run scoreboard players set #evduree iles 1800','execute unless score #evon iles matches 0..1 run scoreboard players set #evon iles 1']
wf('load',['scoreboard objectives add iles dummy']+CONST+DEF+['execute unless score #on iles matches 0..1 run scoreboard players set #on iles 0',
 'bossbar add iles:next {"text":"Prochaine île"}','bossbar set iles:next color yellow','bossbar set iles:next visible false',
 'bossbar add iles:cata {"text":"Catastrophe"}','bossbar set iles:cata color red','bossbar set iles:cata visible false',
 'tellraw @a [{"text":"[Îles] ","color":"gold","bold":true},{"text":"Datapack chargé. Lance-le avec /function iles:start","color":"yellow"}]'])
wf('start',CONST+DEF+['scoreboard players set #on iles 0','kill @e[type=marker,tag=iles_sink]']+RESET+['forceload add -16 -16 15 15','schedule function iles:start2 10t'])
s2=open(f'{FN}/start2.mcfunction',encoding='utf-8').read().split('\n')
s2=[l for l in s2 if l]
s2+=['scoreboard players operation #evtimer iles = #evduree iles','execute if score #evon iles matches 1 run bossbar set iles:cata visible true']
wf('start2',s2)
wf('stop',['scoreboard players set #on iles 0','bossbar set iles:next visible false','bossbar set iles:cata visible false']+RESET+['tellraw @a {"text":"[Îles] Arrêté.","color":"red"}'])
wf('tick',['execute if score #on iles matches 1 run function iles:running']+
  [f'execute if score #{c} iles matches 1.. run function iles:ev/t_{c}' for c in counters]+
  ['execute if entity @e[type=marker,tag=iles_flood,limit=1] run function iles:ev/t_flood',
   'scoreboard players add #sinkt iles 1','execute if score #sinkt iles matches 30.. run function iles:sink_tick'])
wf('running',['scoreboard players remove #timer iles 1','execute store result bossbar iles:next value run scoreboard players get #timer iles',
  'scoreboard players add #t20 iles 1','execute if score #t20 iles matches 20.. run function iles:every_second',
  'execute if score #evon iles matches 1 run scoreboard players remove #evtimer iles 1',
  'execute if score #evon iles matches 1 if score #evtimer iles matches ..0 run function iles:ev/roll',
  'execute if score #timer iles matches ..0 run function iles:next_island'])
es=open(f'{FN}/every_second.mcfunction',encoding='utf-8').read().split('\n')
es=[l for l in es if l]
es+=['scoreboard players operation #evsec iles = #evtimer iles','scoreboard players operation #evsec iles /= #c20 iles',
 'execute store result bossbar iles:cata max run scoreboard players get #evduree iles','execute store result bossbar iles:cata value run scoreboard players get #evtimer iles',
 'bossbar set iles:cata players @a',
 'bossbar set iles:cata name [{"text":"CATASTROPHE dans ","color":"red","bold":true},{"score":{"name":"#evsec","objective":"iles"},"color":"yellow","bold":true},{"text":"s","color":"yellow"}]',
 'execute if score #evon iles matches 1 if score #evsec iles matches 1..3 run title @a actionbar {"text":"CATASTROPHE IMMINENTE !","color":"dark_red","bold":true}']
wf('every_second',es)
wf('help',['tellraw @a [{"text":"[Îles] ","color":"gold","bold":true},{"text":"/function iles:start | iles:stop | iles:skip | iles:cata_now | iles:cata_on | iles:cata_off","color":"yellow"}]',
 'tellraw @a {"text":"Durée d\'un jour : /scoreboard players set #duree iles 6000  |  Délai catastrophes : /scoreboard players set #evduree iles 1800","color":"gray"}',
 'tellraw @a {"text":"Une catastrophe précise : /function iles:ev/e01 (1 à 30)","color":"gray"}'])

# ---------- loot tables ----------
def item(n,count=None,fn=None,weight=None,cond=None):
    e={"type":"minecraft:item","name":f"minecraft:{n}"}; f=[]
    if count is not None:
        f.append({"function":"minecraft:set_count","count":({"type":"minecraft:uniform","min":count[0],"max":count[1]} if isinstance(count,tuple) else count)})
    if fn: f+=fn
    if f: e["functions"]=f
    if weight: e["weight"]=weight
    if cond: e["conditions"]=cond
    return e
def ench(d): return [{"function":"minecraft:set_enchantments","enchantments":{f"minecraft:{k}":v for k,v in d.items()}}]
def nm(t,c='gold'): return [{"function":"minecraft:set_name","name":{"text":t,"color":c}}]
def tb(*pools,typ="minecraft:chest"): return {"type":typ,"pools":[{"rolls":p[0],"entries":p[1]} for p in pools]}
def sub(n,w): return {"type":"minecraft:loot_table","value":f"iles:chest/{n}","weight":w}
def chance(c): return [{"condition":"minecraft:random_chance","chance":c}]
T={}
T['jackpot']=tb((1,[item('diamond',(6,12))]),
  (1,[item('netherite_ingot',(1,2),weight=1),item('enchanted_golden_apple',1,weight=1),item('totem_of_undying',1,weight=1),
      item('diamond_pickaxe',1,ench({'efficiency':5,'unbreaking':3}),weight=1)]),(1,[item('golden_apple',(3,6))]))
T['correct']=tb((1,[item('iron_ingot',(8,16))]),(1,[item('cooked_beef',(8,16))]),
  ((1),[item('ender_pearl',(1,3),weight=2),item('gold_ingot',(4,8),weight=2),item('emerald',(2,6),weight=2),item('experience_bottle',(8,16),weight=1)]))
T['nul']=tb((1,[item('stick',10,nm('Bâton légendaire','yellow'))]),(1,[item('oak_sapling',1,cond=chance(0.5))]))
T['ultra_nul']=tb((1,[item('rotten_flesh',(3,7))]),(1,[item('dirt',1)]),(1,[item('poisonous_potato',1)]))
T['tnt_blague']=tb((1,[item('tnt',(4,8),nm('Cadeau !','red'))]),(1,[item('flint_and_steel',1)]))
T['loterie']=tb((1,[sub('jackpot',2),sub('correct',5),sub('nul',6),sub('ultra_nul',3),sub('tnt_blague',1)]))
T['start']=tb((1,[item('stone_axe',1)]),(1,[item('stone_pickaxe',1)]),(1,[item('oak_sapling',2)]),(1,[item('bone_meal',8)]),(1,[item('bread',8)]),(1,[item('water_bucket',1)]))
T['nourriture']=tb((1,[item('apple',(4,8))]),(1,[item('bread',(4,8))]),(1,[item('cooked_chicken',(4,8))]),(1,[item('mushroom_stew',1)]))
T['bon']=tb((1,[item('diamond',(2,4))]),(1,[item('iron_ingot',(10,20))]),(1,[item('golden_apple',2)]),(1,[item('experience_bottle',16)]))
T['enchant']=tb((1,[item('diamond_pickaxe',1,ench({'efficiency':4,'unbreaking':3}))]),(1,[item('diamond_sword',1,ench({'sharpness':3}))]),(1,[item('golden_apple',2)]))
T['diamants']=tb((1,[item('diamond',(8,14))]))
T['batons']=tb((1,[item('stick',10,nm('Bâton légendaire','yellow'))]))
T['nether']=tb((1,[item('netherite_scrap',(2,4))]),(1,[item('gold_ingot',(8,16))]),(1,[item('cooked_porkchop',8)]),(1,[item('nether_wart',8)]))
T['lave']=tb((3,[item('potion',1,[{"function":"minecraft:set_potion","id":"minecraft:fire_resistance"}])]),(1,[item('golden_apple',3)]),(1,[item('diamond',(3,6))]))
T['end']=tb((1,[item('ender_pearl',(4,8))]),(1,[item('elytra',1,cond=chance(0.35))]),(1,[item('firework_rocket',(16,32))]))
T['portail']=tb((1,[item('ender_eye',12,nm("Œil d'Ender",'light_purple'))]))
T['cheval']=tb((1,[item('saddle',1)]),(1,[item('golden_carrot',16)]),(1,[item('apple',8)]),(1,[item('lead',2)]))
T['marais']=tb((1,[item('glowstone_dust',8)]),(1,[item('redstone',12)]),(1,[item('spider_eye',4)]),(1,[item('slime_ball',6)]),(1,[item('glass_bottle',6)]))
T['glace']=tb((1,[item('oak_boat',1)]),(1,[item('cod',(8,16))]),(1,[item('salmon',(4,8))]),(1,[item('blue_ice',8)]),(1,[item('iron_ingot',(4,8))]))
T['village']=tb((1,[item('bread',8)]),(1,[item('emerald',(4,9))]),(1,[item('iron_ingot',6)]),(1,[item('carrot',8)]),(1,[item('potato',8)]))
T['forteresse']=tb((1,[item('coal',16)]),(1,[item('bone',8)]),(1,[item('wither_skeleton_skull',1,cond=chance(0.5))]),(1,[item('gold_ingot',6)]))
T['zombie']=tb((1,[item('iron_chestplate',1)]),(1,[item('iron_helmet',1)]),(1,[item('golden_apple',(1,2))]),(1,[item('carrot',8)]),(1,[item('potato',8)]))
T['panda']=tb((1,[item('bamboo',64)]),(1,[item('cake',1)]),(1,[item('diamond',2)]))
T['araignee']=tb((1,[item('string',(16,32))]),(1,[item('spider_eye',6)]),(1,[item('fermented_spider_eye',2)]),(1,[item('cobweb',8)]))
T['archer']=tb((1,[item('bow',1,ench({'power':3,'infinity':1}))]),(1,[item('arrow',64)]),(1,[item('shield',1)]))
T['ferme']=tb((1,[item('wheat_seeds',8)]),(1,[item('carrot',8)]),(1,[item('potato',8)]),(1,[item('bone_meal',16)]),(1,[item('bread',4)]))
for k,v in T.items(): wj(f'iles/loot_table/chest/{k}',v)
wj('iles/loot_table/drop/boss',tb((1,[item('diamond',(12,20))]),(1,[item('netherite_ingot',(1,3))]),(1,[item('totem_of_undying',1)]),
   (1,[item('golden_apple',(4,8))]),typ="minecraft:entity"))

print('islands',N,'| catastrophes',NEV)
