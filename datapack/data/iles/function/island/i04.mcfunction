fill ~-8 ~ ~-5 ~8 ~ ~5 snow_block
fill ~-5 ~ ~-8 ~5 ~ ~8 snow_block
fill ~-7 ~ ~-7 ~7 ~ ~7 snow_block
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 snow_block
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 snow_block
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 snow_block
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 snow_block
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 snow_block
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 snow_block
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 stone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 stone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 stone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 stone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 stone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone
setblock ~ ~-6 ~ stone
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:snowy_plains
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 spruce_log
fill ~-6 ~4 ~-5 ~-2 ~5 ~-1 spruce_leaves[persistent=true] keep
fill ~-5 ~6 ~-4 ~-3 ~7 ~-2 spruce_leaves[persistent=true] keep
fill ~3 ~1 ~-4 ~3 ~6 ~-4 spruce_log
fill ~1 ~4 ~-6 ~5 ~5 ~-2 spruce_leaves[persistent=true] keep
fill ~2 ~6 ~-5 ~4 ~7 ~-3 spruce_leaves[persistent=true] keep
fill ~4 ~1 ~4 ~4 ~6 ~4 spruce_log
fill ~2 ~4 ~2 ~6 ~5 ~6 spruce_leaves[persistent=true] keep
fill ~3 ~6 ~3 ~5 ~7 ~5 spruce_leaves[persistent=true] keep
setblock ~3 ~1 ~ chest[facing=west]{LootTable:"iles:chest/enchant",CustomName:{text:"Coffre de givre",color:"aqua"}}
summon minecraft:wolf ~ ~1 ~2 {CustomName:{text:"Loulou",color:"white"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:snow_golem ~-2 ~1 ~3 {CustomName:{text:"Olaf",color:"aqua"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Neige","color":"aqua"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Loulou le loup et Olaf gardent un coffre givré.","color":"aqua"}]
