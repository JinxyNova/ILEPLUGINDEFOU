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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:jungle
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 jungle_log
fill ~-6 ~5 ~-5 ~-2 ~6 ~-1 jungle_leaves[persistent=true] keep
fill ~-5 ~7 ~-4 ~-3 ~8 ~-2 jungle_leaves[persistent=true] keep
fill ~4 ~1 ~-4 ~4 ~7 ~-4 jungle_log
fill ~2 ~5 ~-6 ~6 ~6 ~-2 jungle_leaves[persistent=true] keep
fill ~3 ~7 ~-5 ~5 ~8 ~-3 jungle_leaves[persistent=true] keep
fill ~-5 ~1 ~3 ~-5 ~7 ~3 jungle_log
fill ~-7 ~5 ~1 ~-3 ~6 ~5 jungle_leaves[persistent=true] keep
fill ~-6 ~7 ~2 ~-4 ~8 ~4 jungle_leaves[persistent=true] keep
fill ~3 ~1 ~3 ~4 ~1 ~3 melon
setblock ~3 ~1 ~4 melon
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre loto",color:"gold"}}
summon minecraft:ocelot ~1 ~1 ~2 {CustomName:{text:"Pantoufle",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:ocelot ~-1 ~1 ~-2 {CustomName:{text:"Gérard",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Jungle","color":"green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Des ocelots, des melons et un coffre loto.","color":"green"}]
