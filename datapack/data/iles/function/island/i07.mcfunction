fill ~-8 ~ ~-5 ~8 ~ ~5 mycelium
fill ~-5 ~ ~-8 ~5 ~ ~8 mycelium
fill ~-7 ~ ~-7 ~7 ~ ~7 mycelium
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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:mushroom_fields
fill ~-4 ~1 ~-3 ~-4 ~4 ~-3 mushroom_stem
fill ~-6 ~5 ~-5 ~-2 ~5 ~-1 red_mushroom_block
fill ~-5 ~6 ~-4 ~-3 ~6 ~-2 red_mushroom_block
fill ~4 ~1 ~-3 ~4 ~3 ~-3 mushroom_stem
fill ~2 ~4 ~-5 ~6 ~4 ~-1 brown_mushroom_block
setblock ~2 ~1 ~3 red_mushroom
setblock ~-2 ~1 ~4 brown_mushroom
setblock ~2 ~1 ~-1 chest[facing=west]{LootTable:"iles:chest/nourriture",CustomName:{text:"Coffre à soupe",color:"gold"}}
summon minecraft:mooshroom ~ ~1 ~2 {CustomName:{text:"Meuh",color:"red"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Champignons","color":"red"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Meuh la vache-champignon te salue.","color":"red"}]
