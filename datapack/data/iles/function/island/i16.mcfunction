fill ~-8 ~ ~-5 ~8 ~ ~5 snow_block
fill ~-5 ~ ~-8 ~5 ~ ~8 snow_block
fill ~-7 ~ ~-7 ~7 ~ ~7 snow_block
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 packed_ice
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 packed_ice
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 packed_ice
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 packed_ice
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 packed_ice
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 packed_ice
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 blue_ice
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 blue_ice
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 blue_ice
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 blue_ice
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 blue_ice
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 blue_ice
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 blue_ice
setblock ~ ~-6 ~ blue_ice
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:ice_spikes
fill ~-4 ~1 ~-3 ~-4 ~7 ~-3 packed_ice
fill ~-5 ~1 ~-4 ~-3 ~2 ~-2 packed_ice
setblock ~-4 ~8 ~-3 blue_ice
fill ~4 ~1 ~-4 ~4 ~7 ~-4 packed_ice
fill ~3 ~1 ~-5 ~5 ~2 ~-3 packed_ice
setblock ~4 ~8 ~-4 blue_ice
fill ~3 ~1 ~4 ~3 ~7 ~4 packed_ice
fill ~2 ~1 ~3 ~4 ~2 ~5 packed_ice
setblock ~3 ~8 ~4 blue_ice
setblock ~-3 ~1 ~2 chest[facing=east]{LootTable:"iles:chest/glace",CustomName:{text:"Coffre glacé",color:"aqua"}}
summon minecraft:polar_bear ~ ~1 ~ {CustomName:{text:"Gérard Glaçon",color:"aqua"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Glace","color":"aqua"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Gérard Glaçon l'ours polaire garde les lieux.","color":"aqua"}]
