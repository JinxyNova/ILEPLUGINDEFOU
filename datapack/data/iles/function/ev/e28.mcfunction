title @a times 5 50 15
title @a subtitle {"text":"Cadeau !","color":"gray"}
title @a title {"text":"PLUIE DE DIAMANTS","color":"aqua","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des diamants tombent du ciel (bonne surprise) !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~4 ~10 ~3 {Item:{id:"minecraft:diamond",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~1 ~10 ~3 {Item:{id:"minecraft:diamond",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~-3 ~10 ~3 {Item:{id:"minecraft:diamond",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~-3 ~10 ~3 {Item:{id:"minecraft:diamond",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~3 ~10 ~-5 {Item:{id:"minecraft:diamond",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~2 ~10 ~-3 {Item:{id:"minecraft:diamond",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~4 ~10 ~-5 {Item:{id:"minecraft:emerald",count:2}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~-3 ~10 ~-3 {Item:{id:"minecraft:emerald",count:2}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~-3 ~10 ~2 {Item:{id:"minecraft:emerald",count:2}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~4 ~10 ~-4 {Item:{id:"minecraft:golden_apple",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~3 ~10 ~-5 {Item:{id:"minecraft:golden_apple",count:1}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:item ~ ~10 ~5 {Item:{id:"minecraft:golden_apple",count:1}}
