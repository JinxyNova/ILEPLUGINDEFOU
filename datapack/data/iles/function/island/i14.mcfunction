fill ~-8 ~ ~-5 ~8 ~ ~5 netherrack
fill ~-5 ~ ~-8 ~5 ~ ~8 netherrack
fill ~-7 ~ ~-7 ~7 ~ ~7 netherrack
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 netherrack
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 netherrack
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 netherrack
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 netherrack
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 netherrack
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 netherrack
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 blackstone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 blackstone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 blackstone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 blackstone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 blackstone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 blackstone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 blackstone
setblock ~ ~-6 ~ blackstone
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:nether_wastes
fill ~2 ~ ~-4 ~4 ~ ~-2 lava
fill ~-4 ~ ~2 ~-2 ~ ~4 soul_sand
fill ~-4 ~1 ~-3 ~-4 ~4 ~-3 nether_bricks
setblock ~-3 ~1 ~ chest[facing=east]{LootTable:"iles:chest/nether",CustomName:{text:"Coffre infernal",color:"red"}}
summon minecraft:blaze ~ ~2 ~ {attributes:[{id:"minecraft:max_health",base:60}],Health:60f,CustomName:{text:"Blaze Furieux",color:"gold"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Nether","color":"red"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Un mini Nether, du feu, et un blaze très en colère.","color":"red"}]
execute as @a at @s run playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 1 0.7
