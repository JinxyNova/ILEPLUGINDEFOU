fill ~-7 ~ ~-4 ~7 ~ ~4 grass_block
fill ~-4 ~ ~-7 ~4 ~ ~7 grass_block
fill ~-6 ~ ~-6 ~6 ~ ~6 grass_block
fill ~-6 ~-1 ~-4 ~6 ~-1 ~4 dirt
fill ~-4 ~-1 ~-6 ~4 ~-1 ~6 dirt
fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 dirt
fill ~-4 ~-2 ~-2 ~4 ~-2 ~2 dirt
fill ~-2 ~-2 ~-4 ~2 ~-2 ~4 dirt
fill ~-3 ~-2 ~-3 ~3 ~-2 ~3 dirt
fill ~-3 ~-3 ~-2 ~3 ~-3 ~2 stone
fill ~-2 ~-3 ~-3 ~2 ~-3 ~3 stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 stone
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone
setblock ~ ~-5 ~ stone
fillbiome ~-9 ~-10 ~-9 ~9 ~12 ~9 minecraft:plains
fill ~3 ~1 ~3 ~4 ~2 ~4 hay_block
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/batons",CustomName:{text:"COFFRE LÉGENDAIRE",color:"gold"}}
setblock ~ ~1 ~-2 oak_sign[rotation=0]{front_text:{messages:["COFFRE","LÉGENDAIRE","(vraiment)",""],color:"black"},is_waxed:1b}
summon minecraft:chicken ~ ~1 ~-3 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b}
summon minecraft:chicken ~1 ~1 ~5 {CustomName:{text:"Gérard",color:"yellow"},CustomNameVisible:1b}
summon minecraft:chicken ~-5 ~1 ~-4
summon minecraft:chicken ~3 ~1 ~-4
summon minecraft:chicken ~ ~1 ~4
summon minecraft:chicken ~-5 ~1 ~3
summon minecraft:chicken ~-2 ~1 ~-5
summon minecraft:chicken ~-4 ~1 ~1
summon minecraft:chicken ~1 ~1 ~-4
summon minecraft:chicken ~-2 ~1 ~-4
summon minecraft:chicken ~3 ~1 ~1
summon minecraft:chicken ~-5 ~1 ~4
summon minecraft:chicken ~-4 ~1 ~-2
summon minecraft:chicken ~5 ~1 ~5
summon minecraft:chicken ~4 ~1 ~-5
summon minecraft:chicken ~4 ~1 ~4
summon minecraft:chicken ~1 ~1 ~-5
summon minecraft:chicken ~-2 ~1 ~-5
summon minecraft:chicken ~3 ~1 ~-3
summon minecraft:chicken ~-1 ~1 ~1
summon minecraft:chicken ~-3 ~1 ~3
summon minecraft:chicken ~-4 ~1 ~4
summon minecraft:chicken ~-1 ~1 ~3
summon minecraft:chicken ~5 ~1 ~-3
summon minecraft:chicken ~-4 ~1 ~4
summon minecraft:chicken ~4 ~1 ~5
summon minecraft:chicken ~-2 ~1 ~
summon minecraft:chicken ~-4 ~1 ~3
summon minecraft:chicken ~-4 ~1 ~4
summon minecraft:chicken ~-5 ~1 ~4
summon minecraft:chicken ~-2 ~1 ~2
summon minecraft:chicken ~5 ~1 ~3
summon minecraft:chicken ~1 ~1 ~
summon minecraft:chicken ~2 ~1 ~4
summon minecraft:chicken ~2 ~1 ~
summon minecraft:chicken ~-1 ~1 ~-2
summon minecraft:chicken ~-3 ~1 ~-2
summon minecraft:chicken ~-4 ~1 ~4
summon minecraft:chicken ~-1 ~1 ~3
summon minecraft:chicken ~2 ~1 ~
title @a subtitle {"text":"Île Poulailler","color":"yellow"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"40 poules. Un coffre légendaire. Fais-lui confiance.","color":"yellow"}]
execute as @a at @s run playsound minecraft:entity.chicken.ambient master @s ~ ~ ~ 1 0.8
