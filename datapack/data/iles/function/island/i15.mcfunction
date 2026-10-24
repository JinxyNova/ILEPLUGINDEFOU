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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:savanna
fill ~-4 ~1 ~-3 ~-4 ~4 ~-3 acacia_log
fill ~-6 ~5 ~-5 ~-2 ~5 ~-1 acacia_leaves[persistent=true]
fill ~-5 ~6 ~-4 ~-3 ~6 ~-2 acacia_leaves[persistent=true]
fill ~4 ~1 ~-4 ~4 ~4 ~-4 acacia_log
fill ~2 ~5 ~-6 ~6 ~5 ~-2 acacia_leaves[persistent=true]
fill ~3 ~6 ~-5 ~5 ~6 ~-3 acacia_leaves[persistent=true]
setblock ~3 ~1 ~2 chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre loto",color:"gold"}}
summon minecraft:llama ~ ~1 ~ {CustomName:{text:"Lama Cracheur",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:llama ~-2 ~1 ~3 {CustomName:{text:"Lama Cracheur 2",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Savane","color":"yellow"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Deux lamas qui crachent. Garde ton calme.","color":"yellow"}]
