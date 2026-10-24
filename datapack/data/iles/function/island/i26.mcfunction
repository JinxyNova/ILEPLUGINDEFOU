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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:bamboo_jungle
fill ~5 ~1 ~2 ~5 ~6 ~2 bamboo
fill ~1 ~1 ~5 ~1 ~6 ~5 bamboo
fill ~-5 ~1 ~2 ~-5 ~6 ~2 bamboo
fill ~-3 ~1 ~4 ~-3 ~4 ~4 bamboo
fill ~2 ~1 ~-5 ~2 ~5 ~-5 bamboo
fill ~-1 ~1 ~-3 ~-1 ~5 ~-3 bamboo
fill ~2 ~1 ~-4 ~2 ~5 ~-4 bamboo
fill ~2 ~1 ~1 ~2 ~6 ~1 bamboo
fill ~-3 ~1 ~1 ~-3 ~6 ~1 bamboo
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/panda",CustomName:{text:"Coffre à bambou",color:"green"}}
summon minecraft:panda ~2 ~1 ~2 {CustomName:{text:"Po",color:"white"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:panda ~-2 ~1 ~-2 {CustomName:{text:"Pao",color:"white"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Panda","color":"green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Beaucoup de bambou. Et deux pandas adorables.","color":"green"}]
