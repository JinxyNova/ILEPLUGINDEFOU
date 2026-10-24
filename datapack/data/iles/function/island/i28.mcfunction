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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:flower_forest
setblock ~-1 ~1 ~3 poppy
setblock ~-5 ~1 ~-3 oxeye_daisy
setblock ~ ~1 ~-4 cornflower
setblock ~-1 ~1 ~3 cornflower
setblock ~1 ~1 ~-5 poppy
setblock ~1 ~1 ~1 azure_bluet
setblock ~1 ~1 ~-2 poppy
setblock ~-4 ~1 ~-5 cornflower
setblock ~5 ~1 ~-2 azure_bluet
setblock ~5 ~1 ~-4 oxeye_daisy
setblock ~-6 ~1 ~-3 oxeye_daisy
setblock ~-1 ~1 ~-4 oxeye_daisy
setblock ~-6 ~1 ~6 oxeye_daisy
setblock ~-2 ~1 ~4 poppy
setblock ~5 ~1 ~-2 oxeye_daisy
setblock ~-1 ~1 ~-4 cornflower
setblock ~6 ~1 ~-3 oxeye_daisy
setblock ~2 ~1 ~6 oxeye_daisy
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre loto 1",color:"gold"}}
setblock ~2 ~1 ~2 chest[facing=north]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre loto 2",color:"gold"}}
summon minecraft:pig ~1 ~1 ~-1 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:cow ~-1 ~1 ~-1 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:sheep ~2 ~1 ~-1 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:cat ~-1 ~1 ~4 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:rabbit ~3 ~1 ~1 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:fox ~-4 ~1 ~-4 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:goat ~ ~1 ~3 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:llama ~ ~1 ~-1 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:wolf ~1 ~1 ~3 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:horse ~1 ~1 ~1 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Zoo du Chaos","color":"yellow"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Dix animaux, tous s'appellent Gérard.","color":"yellow"}]
