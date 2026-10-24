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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:forest
fill ~-4 ~1 ~-3 ~-4 ~5 ~-3 oak_log
fill ~-6 ~3 ~-5 ~-2 ~4 ~-1 oak_leaves[persistent=true] keep
fill ~-5 ~5 ~-4 ~-3 ~6 ~-2 oak_leaves[persistent=true] keep
fill ~4 ~1 ~-4 ~4 ~5 ~-4 oak_log
fill ~2 ~3 ~-6 ~6 ~4 ~-2 oak_leaves[persistent=true] keep
fill ~3 ~5 ~-5 ~5 ~6 ~-3 oak_leaves[persistent=true] keep
fill ~-4 ~1 ~4 ~-4 ~5 ~4 oak_log
fill ~-6 ~3 ~2 ~-2 ~4 ~6 oak_leaves[persistent=true] keep
fill ~-5 ~5 ~3 ~-3 ~6 ~5 oak_leaves[persistent=true] keep
fill ~5 ~1 ~3 ~5 ~5 ~3 oak_log
fill ~3 ~3 ~1 ~7 ~4 ~5 oak_leaves[persistent=true] keep
fill ~4 ~5 ~2 ~6 ~6 ~4 oak_leaves[persistent=true] keep
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre loto",color:"gold"}}
setblock ~2 ~1 ~-2 poppy
setblock ~-2 ~1 ~2 dandelion
summon minecraft:sheep ~1 ~1 ~2 {Color:6b,CustomName:{text:"Barbara",color:"light_purple"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Forêt","color":"yellow"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Barbara le mouton rose garde un coffre loto : jackpot ou bâtons ?","color":"yellow"}]
