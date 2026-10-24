title @a times 5 50 15
title @a subtitle {"text":"Prends un câlin","color":"gray"}
title @a title {"text":"BÉNÉDICTION","color":"light_purple","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Régénération, absorption et satiété !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.8
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1
effect give @a[gamemode=!spectator] minecraft:regeneration 20 2 true
effect give @a[gamemode=!spectator] minecraft:absorption 40 3 true
effect give @a[gamemode=!spectator] minecraft:saturation 5 4 true
