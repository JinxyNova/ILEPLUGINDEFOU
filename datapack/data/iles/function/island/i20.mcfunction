fill ~-9 ~ ~-5 ~9 ~ ~5 grass_block
fill ~-5 ~ ~-9 ~5 ~ ~9 grass_block
fill ~-8 ~ ~-8 ~8 ~ ~8 grass_block
fill ~-8 ~-1 ~-5 ~8 ~-1 ~5 dirt
fill ~-5 ~-1 ~-8 ~5 ~-1 ~8 dirt
fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 dirt
fill ~-6 ~-2 ~-4 ~6 ~-2 ~4 dirt
fill ~-4 ~-2 ~-6 ~4 ~-2 ~6 dirt
fill ~-5 ~-2 ~-5 ~5 ~-2 ~5 dirt
fill ~-5 ~-3 ~-3 ~5 ~-3 ~3 stone
fill ~-3 ~-3 ~-5 ~3 ~-3 ~5 stone
fill ~-4 ~-3 ~-4 ~4 ~-3 ~4 stone
fill ~-3 ~-4 ~-2 ~3 ~-4 ~2 stone
fill ~-2 ~-4 ~-3 ~2 ~-4 ~3 stone
fill ~-3 ~-4 ~-3 ~3 ~-4 ~3 stone
fill ~-2 ~-5 ~-1 ~2 ~-5 ~1 stone
fill ~-1 ~-5 ~-2 ~1 ~-5 ~2 stone
fill ~-2 ~-5 ~-2 ~2 ~-5 ~2 stone
fill ~-1 ~-6 ~-1 ~1 ~-6 ~1 stone
setblock ~ ~-7 ~ stone
fillbiome ~-11 ~-10 ~-11 ~11 ~12 ~11 minecraft:plains
fill ~-6 ~ ~-5 ~-2 ~4 ~-1 oak_planks hollow
setblock ~-4 ~1 ~-1 air
setblock ~-4 ~2 ~-1 air
setblock ~-6 ~2 ~-3 glass_pane
setblock ~-2 ~2 ~-3 glass_pane
setblock ~-3 ~1 ~-4 crafting_table
setblock ~-5 ~1 ~-4 torch
fill ~2 ~ ~1 ~6 ~4 ~5 oak_planks hollow
setblock ~4 ~1 ~5 air
setblock ~4 ~2 ~5 air
setblock ~2 ~2 ~3 glass_pane
setblock ~6 ~2 ~3 glass_pane
setblock ~5 ~1 ~2 crafting_table
setblock ~3 ~1 ~2 torch
setblock ~-5 ~1 ~-4 chest[facing=east]{LootTable:"iles:chest/village",CustomName:{text:"Coffre du village",color:"green"}}
summon minecraft:villager ~-4 ~1 ~-3 {VillagerData:{type:"minecraft:plains",profession:"minecraft:farmer",level:3},NoAI:1b,Invulnerable:1b,CustomName:{text:"Gaston",color:"green"},CustomNameVisible:1b}
summon minecraft:villager ~4 ~1 ~3 {VillagerData:{type:"minecraft:plains",profession:"minecraft:toolsmith",level:3},NoAI:1b,Invulnerable:1b,CustomName:{text:"Marcel",color:"green"},CustomNameVisible:1b}
summon minecraft:iron_golem ~ ~1 ~ {PersistenceRequired:1b}
title @a subtitle {"text":"Île Village","color":"green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Un mini village avec deux villageois commerçants.","color":"green"}]
