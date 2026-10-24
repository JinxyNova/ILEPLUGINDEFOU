title @a times 5 50 15
title @a subtitle {"text":"Gotta go fast","color":"gray"}
title @a title {"text":"MODE SONIC","color":"aqua","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Vitesse et saut x10 pendant 30 secondes !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.5
effect give @a[gamemode=!spectator] minecraft:speed 30 6 true
effect give @a[gamemode=!spectator] minecraft:jump_boost 30 3 true
effect give @a[gamemode=!spectator] minecraft:haste 30 2 true
