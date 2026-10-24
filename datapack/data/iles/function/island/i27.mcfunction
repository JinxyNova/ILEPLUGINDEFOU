fill ~-8 ~ ~-5 ~8 ~ ~5 stone
fill ~-5 ~ ~-8 ~5 ~ ~8 stone
fill ~-7 ~ ~-7 ~7 ~ ~7 stone
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 cobblestone
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 cobblestone
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 cobblestone
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 cobblestone
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 cobblestone
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 cobblestone
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 stone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 stone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 stone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 stone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 stone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone
setblock ~ ~-6 ~ stone
setblock ~5 ~1 ~ cobweb
setblock ~-1 ~1 ~4 cobweb
setblock ~ ~1 ~-3 cobweb
setblock ~-4 ~1 ~-5 cobweb
setblock ~-4 ~1 ~-4 cobweb
setblock ~-3 ~1 ~4 cobweb
setblock ~-3 ~1 ~-6 cobweb
setblock ~1 ~1 ~3 cobweb
setblock ~-4 ~1 ~-2 cobweb
setblock ~-2 ~1 ~-6 cobweb
setblock ~-4 ~1 ~ cobweb
setblock ~2 ~1 ~-1 cobweb
setblock ~3 ~1 ~3 cobweb
setblock ~-1 ~1 ~-4 cobweb
setblock ~5 ~1 ~2 cobweb
setblock ~3 ~1 ~4 cobweb
setblock ~4 ~1 ~5 cobweb
setblock ~-6 ~1 ~1 cobweb
setblock ~6 ~1 ~4 cobweb
setblock ~6 ~1 ~2 cobweb
setblock ~ ~1 ~ cobweb
setblock ~ ~1 ~ cobweb
setblock ~-5 ~1 ~1 cobweb
setblock ~4 ~1 ~ cobweb
setblock ~-6 ~1 ~-3 cobweb
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/araignee",CustomName:{text:"Coffre toile",color:"gray"}}
summon minecraft:spider ~3 ~1 ~3 {CustomName:{text:"Gérard",color:"dark_gray"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:spider ~-3 ~1 ~-3 {CustomName:{text:"Gérard",color:"dark_gray"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:spider ~3 ~1 ~-3 {CustomName:{text:"Gérard",color:"dark_gray"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:cave_spider ~-3 ~1 ~-1 {PersistenceRequired:1b}
summon minecraft:cave_spider ~3 ~1 ~-2 {PersistenceRequired:1b}
summon minecraft:cave_spider ~-3 ~1 ~1 {PersistenceRequired:1b}
summon minecraft:cave_spider ~-4 ~1 ~-3 {PersistenceRequired:1b}
summon minecraft:cave_spider ~-4 ~1 ~-2 {PersistenceRequired:1b}
summon minecraft:cave_spider ~4 ~1 ~-3 {PersistenceRequired:1b}
title @a subtitle {"text":"Île Araignées","color":"dark_gray"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Des toiles partout. Des pattes partout.","color":"dark_gray"}]
