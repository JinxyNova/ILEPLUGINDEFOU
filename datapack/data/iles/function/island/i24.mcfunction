fill ~-8 ~ ~-5 ~8 ~ ~5 nether_bricks
fill ~-5 ~ ~-8 ~5 ~ ~8 nether_bricks
fill ~-7 ~ ~-7 ~7 ~ ~7 nether_bricks
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 nether_bricks
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 nether_bricks
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 nether_bricks
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 nether_bricks
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 nether_bricks
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 nether_bricks
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 netherrack
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 netherrack
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 netherrack
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 netherrack
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 netherrack
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 netherrack
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 netherrack
setblock ~ ~-6 ~ netherrack
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:nether_wastes
fill ~-3 ~ ~-3 ~3 ~4 ~3 nether_bricks hollow
setblock ~ ~1 ~3 air
setblock ~ ~2 ~3 air
setblock ~-2 ~1 ~-2 chest[facing=east]{LootTable:"iles:chest/forteresse",CustomName:{text:"Coffre de la forteresse",color:"red"}}
summon minecraft:wither_skeleton ~1 ~1 ~-1 {PersistenceRequired:1b}
summon minecraft:wither_skeleton ~-1 ~1 ~1 {PersistenceRequired:1b}
summon minecraft:wither_skeleton ~ ~1 ~ {PersistenceRequired:1b}
title @a subtitle {"text":"Île Forteresse","color":"dark_gray"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Trois squelettes wither gardent la forteresse.","color":"dark_gray"}]
