fill ~-8 ~ ~-5 ~8 ~ ~5 end_stone
fill ~-5 ~ ~-8 ~5 ~ ~8 end_stone
fill ~-7 ~ ~-7 ~7 ~ ~7 end_stone
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 end_stone
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 end_stone
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 end_stone
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 end_stone
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 end_stone
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 end_stone
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 end_stone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 end_stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 end_stone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 end_stone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 end_stone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 end_stone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 end_stone
setblock ~ ~-6 ~ end_stone
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:the_end
fill ~-4 ~1 ~-3 ~-4 ~6 ~-3 obsidian
fill ~4 ~1 ~-4 ~4 ~6 ~-4 obsidian
fill ~3 ~1 ~4 ~3 ~6 ~4 obsidian
setblock ~-3 ~1 ~3 chorus_plant
setblock ~-3 ~2 ~3 chorus_plant
setblock ~-3 ~3 ~3 chorus_flower
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/end",CustomName:{text:"Coffre de l'End",color:"light_purple"}}
summon minecraft:enderman ~2 ~1 ~2 {CustomName:{text:"Slender",color:"dark_purple"},CustomNameVisible:1b,PersistenceRequired:1b}
summon minecraft:enderman ~-2 ~1 ~-2 {CustomName:{text:"Slender 2",color:"dark_purple"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île End","color":"dark_purple"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Deux endermen. Ne les regarde PAS dans les yeux.","color":"dark_purple"}]
execute as @a at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 1 0.6
