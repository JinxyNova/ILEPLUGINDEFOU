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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:swamp
fill ~-4 ~1 ~-3 ~-4 ~4 ~-3 oak_log
fill ~-6 ~2 ~-5 ~-2 ~3 ~-1 oak_leaves[persistent=true] keep
fill ~-5 ~4 ~-4 ~-3 ~5 ~-2 oak_leaves[persistent=true] keep
fill ~2 ~ ~2 ~4 ~ ~4 water
setblock ~3 ~1 ~3 lily_pad
setblock ~-3 ~1 ~3 chest[facing=east]{LootTable:"iles:chest/marais",CustomName:{text:"Coffre du marais",color:"dark_green"}}
summon minecraft:witch ~-2 ~1 ~-2 {CustomName:{text:"Bernadette",color:"dark_purple"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:slime ~ ~1 ~ {Size:1}
summon minecraft:slime ~1 ~1 ~-1 {Size:1}
summon minecraft:slime ~-1 ~1 ~1 {Size:1}
title @a subtitle {"text":"Île Marais","color":"dark_green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Bernadette la sorcière et ses petits slimes.","color":"dark_green"}]
