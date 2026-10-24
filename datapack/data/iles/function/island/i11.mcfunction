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
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:plains
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/batons",CustomName:{text:"COFFRE LÉGENDAIRE (2)",color:"gold"}}
setblock ~ ~1 ~-2 oak_sign[rotation=0]{front_text:{messages:["COFFRE","LÉGENDAIRE","Creuse mieux",""],color:"black"},is_waxed:1b}
setblock ~3 ~-2 ~-3 chest[facing=south]{LootTable:"iles:chest/diamants",CustomName:{text:"Le VRAI coffre",color:"aqua"}}
summon minecraft:villager ~-3 ~1 ~2 {VillagerData:{type:"minecraft:plains",profession:"minecraft:nitwit",level:1},NoAI:1b,Invulnerable:1b,CustomName:{text:"L'Arnaqueur",color:"red"},CustomNameVisible:1b}
title @a subtitle {"text":"Île Arnaque","color":"red"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Le coffre légendaire est nul. Le vrai trésor est caché sous terre...","color":"red"}]
