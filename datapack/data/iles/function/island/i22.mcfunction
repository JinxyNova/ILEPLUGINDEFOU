fill ~-9 ~ ~-5 ~9 ~ ~5 stone_bricks
fill ~-5 ~ ~-9 ~5 ~ ~9 stone_bricks
fill ~-8 ~ ~-8 ~8 ~ ~8 stone_bricks
fill ~-8 ~-1 ~-5 ~8 ~-1 ~5 deepslate_bricks
fill ~-5 ~-1 ~-8 ~5 ~-1 ~8 deepslate_bricks
fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 deepslate_bricks
fill ~-6 ~-2 ~-4 ~6 ~-2 ~4 deepslate_bricks
fill ~-4 ~-2 ~-6 ~4 ~-2 ~6 deepslate_bricks
fill ~-5 ~-2 ~-5 ~5 ~-2 ~5 deepslate_bricks
fill ~-5 ~-3 ~-3 ~5 ~-3 ~3 deepslate
fill ~-3 ~-3 ~-5 ~3 ~-3 ~5 deepslate
fill ~-4 ~-3 ~-4 ~4 ~-3 ~4 deepslate
fill ~-3 ~-4 ~-2 ~3 ~-4 ~2 deepslate
fill ~-2 ~-4 ~-3 ~2 ~-4 ~3 deepslate
fill ~-3 ~-4 ~-3 ~3 ~-4 ~3 deepslate
fill ~-2 ~-5 ~-1 ~2 ~-5 ~1 deepslate
fill ~-1 ~-5 ~-2 ~1 ~-5 ~2 deepslate
fill ~-2 ~-5 ~-2 ~2 ~-5 ~2 deepslate
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 deepslate
setblock ~ ~-7 ~ deepslate
fill ~5 ~1 ~5 ~5 ~4 ~5 polished_blackstone_bricks
fill ~-5 ~1 ~5 ~-5 ~4 ~5 polished_blackstone_bricks
fill ~5 ~1 ~-5 ~5 ~4 ~-5 polished_blackstone_bricks
fill ~-5 ~1 ~-5 ~-5 ~4 ~-5 polished_blackstone_bricks
setblock ~ ~1 ~7 chest[facing=north]{LootTable:"iles:chest/diamants",CustomName:{text:"Butin de Gérard",color:"red"}}
summon minecraft:ravager ~ ~1 ~ {attributes:[{id:"minecraft:max_health",base:200},{id:"minecraft:scale",base:1.6}],Health:200f,DeathLootTable:"iles:drop/boss",CustomName:{text:"GÉRARD LE RAVAGEUR",color:"dark_red"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:vindicator ~3 ~1 ~ {equipment:{mainhand:{id:"minecraft:iron_axe",count:1}},PersistenceRequired:1b}
summon minecraft:vindicator ~-3 ~1 ~ {equipment:{mainhand:{id:"minecraft:iron_axe",count:1}},PersistenceRequired:1b}
title @a subtitle {"text":"ÎLE BOSS","color":"dark_red"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"GÉRARD LE RAVAGEUR (200 PV) est là. Bonne chance.","color":"dark_red"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.8 1
