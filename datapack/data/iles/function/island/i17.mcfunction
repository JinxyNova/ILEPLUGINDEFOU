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
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/correct",CustomName:{text:"Coffre (bonne chance)",color:"gold"}}
summon minecraft:creeper ~3 ~1 ~3 {CustomName:{text:"Bonjour",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:creeper ~-3 ~1 ~3 {CustomName:{text:"Bonjour",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:creeper ~3 ~1 ~-3 {CustomName:{text:"Bonjour",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:creeper ~-3 ~1 ~-3 {CustomName:{text:"Bonjour",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:creeper ~5 ~1 ~ {CustomName:{text:"Bonjour",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:creeper ~-5 ~1 ~ {CustomName:{text:"Bonjour",color:"green"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Creeper Party","color":"green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Six creepers très sympathiques. Surtout reste calme.","color":"green"}]
execute as @a at @s run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 1 1
