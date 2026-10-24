fill ~-8 ~ ~-5 ~8 ~ ~5 sand
fill ~-5 ~ ~-8 ~5 ~ ~8 sand
fill ~-7 ~ ~-7 ~7 ~ ~7 sand
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 sandstone
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 sandstone
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 sandstone
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 sandstone
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 sandstone
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 sandstone
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 sandstone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 sandstone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 sandstone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 sandstone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 sandstone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 sandstone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 sandstone
setblock ~ ~-6 ~ sandstone
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:desert
fill ~-4 ~1 ~-3 ~-4 ~2 ~-3 cactus
fill ~4 ~1 ~2 ~4 ~2 ~2 cactus
fill ~-2 ~1 ~5 ~-2 ~2 ~5 cactus
setblock ~2 ~1 ~-4 dead_bush
setblock ~-3 ~1 ~1 chest[facing=east]{LootTable:"iles:chest/correct",CustomName:{text:"Coffre du désert",color:"gold"}}
summon minecraft:villager ~ ~1 ~ {VillagerData:{type:"minecraft:desert",profession:"minecraft:cleric",level:5},NoAI:1b,Invulnerable:1b,Offers:{Recipes:[{buy:{id:"minecraft:stick",count:5},sell:{id:"minecraft:diamond",count:1},maxUses:3,xp:0},{buy:{id:"minecraft:rotten_flesh",count:16},sell:{id:"minecraft:golden_apple",count:1},maxUses:3,xp:0},{buy:{id:"minecraft:dirt",count:32},sell:{id:"minecraft:emerald",count:4},maxUses:5,xp:0}]},CustomName:{text:"Pedro le Marchand Louche",color:"gold"},CustomNameVisible:1b}
title @a subtitle {"text":"Île Désert","color":"yellow"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Pedro achète 5 bâtons contre 1 diamant. Oui oui.","color":"yellow"}]
