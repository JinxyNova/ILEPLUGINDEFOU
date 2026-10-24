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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:plains
fill ~-4 ~1 ~-3 ~-4 ~5 ~-3 oak_log
fill ~-6 ~3 ~-5 ~-2 ~4 ~-1 oak_leaves[persistent=true] keep
fill ~-5 ~5 ~-4 ~-3 ~6 ~-2 oak_leaves[persistent=true] keep
fill ~4 ~1 ~3 ~4 ~5 ~3 oak_log
fill ~2 ~3 ~1 ~6 ~4 ~5 oak_leaves[persistent=true] keep
fill ~3 ~5 ~2 ~5 ~6 ~4 oak_leaves[persistent=true] keep
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/archer",CustomName:{text:"Coffre de Robin",color:"green"}}
summon minecraft:skeleton ~3 ~1 ~-3 {equipment:{mainhand:{id:"minecraft:bow",count:1},head:{id:"minecraft:iron_helmet",count:1}},CustomName:{text:"Robin",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:skeleton ~-3 ~1 ~3 {equipment:{mainhand:{id:"minecraft:bow",count:1},head:{id:"minecraft:iron_helmet",count:1}},CustomName:{text:"Robin",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:skeleton ~4 ~1 ~ {equipment:{mainhand:{id:"minecraft:bow",count:1},head:{id:"minecraft:iron_helmet",count:1}},CustomName:{text:"Robin",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:skeleton ~-4 ~1 ~-1 {equipment:{mainhand:{id:"minecraft:bow",count:1},head:{id:"minecraft:iron_helmet",count:1}},CustomName:{text:"Robin",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Robin des Bois","color":"green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Quatre archers. Une seule règle : cours.","color":"green"}]
