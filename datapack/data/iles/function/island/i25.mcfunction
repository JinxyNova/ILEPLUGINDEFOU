fill ~-8 ~ ~-5 ~8 ~ ~5 grass_block
fill ~-5 ~ ~-8 ~5 ~ ~8 grass_block
fill ~-7 ~ ~-7 ~7 ~ ~7 grass_block
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 dirt
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 dirt
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 dirt
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 dirt
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 dirt
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 dirt
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 stone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 stone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 stone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 stone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 stone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone
setblock ~ ~-6 ~ stone
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:dark_forest
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 dark_oak_log
fill ~-6 ~4 ~-5 ~-2 ~5 ~-1 dark_oak_leaves[persistent=true] keep
fill ~-5 ~6 ~-4 ~-3 ~7 ~-2 dark_oak_leaves[persistent=true] keep
fill ~4 ~1 ~-4 ~4 ~6 ~-4 dark_oak_log
fill ~2 ~4 ~-6 ~6 ~5 ~-2 dark_oak_leaves[persistent=true] keep
fill ~3 ~6 ~-5 ~5 ~7 ~-3 dark_oak_leaves[persistent=true] keep
fill ~-4 ~1 ~4 ~-4 ~6 ~4 dark_oak_log
fill ~-6 ~4 ~2 ~-2 ~5 ~6 dark_oak_leaves[persistent=true] keep
fill ~-5 ~6 ~3 ~-3 ~7 ~5 dark_oak_leaves[persistent=true] keep
setblock ~3 ~1 ~3 chest[facing=west]{LootTable:"iles:chest/zombie",CustomName:{text:"Coffre de survie",color:"dark_green"}}
summon minecraft:zombie ~ ~1 ~ {equipment:{head:{id:"minecraft:iron_helmet",count:1}},PersistenceRequired:1b}
summon minecraft:zombie ~2 ~1 ~-2 {equipment:{head:{id:"minecraft:iron_helmet",count:1}},PersistenceRequired:1b}
summon minecraft:zombie ~-2 ~1 ~2 {equipment:{head:{id:"minecraft:iron_helmet",count:1}},PersistenceRequired:1b}
summon minecraft:zombie ~3 ~1 ~ {equipment:{head:{id:"minecraft:iron_helmet",count:1}},PersistenceRequired:1b}
summon minecraft:zombie ~-3 ~1 ~-1 {equipment:{head:{id:"minecraft:iron_helmet",count:1}},PersistenceRequired:1b}
summon minecraft:zombie ~1 ~1 ~4 {equipment:{head:{id:"minecraft:iron_helmet",count:1}},PersistenceRequired:1b}
summon minecraft:zombie ~-1 ~1 ~-4 {equipment:{head:{id:"minecraft:iron_helmet",count:1}},PersistenceRequired:1b}
summon minecraft:zombie ~1 ~1 ~1 {IsBaby:1b,equipment:{head:{id:"minecraft:iron_helmet",count:1}},CustomName:{text:"Mini-Gérard",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:zombie ~-1 ~1 ~-1 {IsBaby:1b,equipment:{head:{id:"minecraft:iron_helmet",count:1}},CustomName:{text:"Mini-Gérard",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Zombies","color":"dark_green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Sept zombies et deux bébés zombies. Bon courage.","color":"dark_green"}]
