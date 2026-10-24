fill ~-7 ~ ~-4 ~7 ~ ~4 oak_planks
fill ~-4 ~ ~-7 ~4 ~ ~7 oak_planks
fill ~-6 ~ ~-6 ~6 ~ ~6 oak_planks
fill ~-6 ~-1 ~-4 ~6 ~-1 ~4 stripped_oak_log
fill ~-4 ~-1 ~-6 ~4 ~-1 ~6 stripped_oak_log
fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 stripped_oak_log
fill ~-4 ~-2 ~-2 ~4 ~-2 ~2 stripped_oak_log
fill ~-2 ~-2 ~-4 ~2 ~-2 ~4 stripped_oak_log
fill ~-3 ~-2 ~-3 ~3 ~-2 ~3 stripped_oak_log
fill ~-3 ~-3 ~-2 ~3 ~-3 ~2 oak_log
fill ~-2 ~-3 ~-3 ~2 ~-3 ~3 oak_log
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 oak_log
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 oak_log
setblock ~ ~-5 ~ oak_log
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/jackpot",CustomName:{text:"TRÉSOR (vite !)",color:"gold"}}
setblock ~3 ~1 ~3 chest[facing=north]{LootTable:"iles:chest/ultra_nul",CustomName:{text:"Coffre bonus",color:"gray"}}
setblock ~ ~1 ~-3 oak_sign[rotation=0]{front_text:{messages:["CETTE ÎLE","COULE !","Dépêche-toi",""],color:"black"},is_waxed:1b}
summon minecraft:marker ~ ~ ~ {Tags:["iles_sink"]}
title @a subtitle {"text":"Île Titanic","color":"red"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Elle coule lentement. Prends le trésor et fuis !","color":"red"}]
execute as @a at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.6
