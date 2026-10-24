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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:cherry_grove
fill ~-4 ~1 ~-3 ~-4 ~5 ~-3 cherry_log
fill ~-6 ~3 ~-5 ~-2 ~4 ~-1 cherry_leaves[persistent=true] keep
fill ~-5 ~5 ~-4 ~-3 ~6 ~-2 cherry_leaves[persistent=true] keep
fill ~4 ~1 ~-4 ~4 ~5 ~-4 cherry_log
fill ~2 ~3 ~-6 ~6 ~4 ~-2 cherry_leaves[persistent=true] keep
fill ~3 ~5 ~-5 ~5 ~6 ~-3 cherry_leaves[persistent=true] keep
fill ~-3 ~1 ~4 ~-3 ~5 ~4 cherry_log
fill ~-5 ~3 ~2 ~-1 ~4 ~6 cherry_leaves[persistent=true] keep
fill ~-4 ~5 ~3 ~-2 ~6 ~5 cherry_leaves[persistent=true] keep
setblock ~4 ~1 ~-5 pink_petals
setblock ~6 ~1 ~2 pink_petals
setblock ~3 ~1 ~6 pink_petals
setblock ~-1 ~1 ~-1 pink_petals
setblock ~5 ~1 ~-1 pink_petals
setblock ~3 ~1 ~1 pink_petals
setblock ~3 ~1 ~6 pink_petals
setblock ~1 ~1 ~-5 pink_petals
setblock ~-5 ~1 ~-2 pink_petals
setblock ~1 ~1 ~5 pink_petals
setblock ~4 ~1 ~-5 pink_petals
setblock ~-6 ~1 ~5 pink_petals
setblock ~5 ~1 ~-2 pink_petals
setblock ~4 ~1 ~3 pink_petals
setblock ~3 ~1 ~2 chest[facing=west]{LootTable:"iles:chest/bon",CustomName:{text:"Coffre Sakura",color:"light_purple"}}
summon minecraft:iron_golem ~ ~1 ~ {CustomName:{text:"Gardien",color:"light_purple"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:villager ~-2 ~1 ~2 {VillagerData:{type:"minecraft:plains",profession:"minecraft:librarian",level:5},NoAI:1b,Invulnerable:1b,CustomName:{text:"Sakura",color:"light_purple"},CustomNameVisible:1b}
title @a subtitle {"text":"Île Cerisier","color":"light_purple"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Sakura la bibliothécaire vend peut-être de beaux livres...","color":"light_purple"}]
