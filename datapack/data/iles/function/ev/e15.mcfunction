title @a times 5 50 15
title @a subtitle {"text":"Décollage !","color":"gray"}
title @a title {"text":"CATAPULTE","color":"aqua","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Vous êtes projetés dans les airs !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 1
effect give @a[gamemode=!spectator] minecraft:levitation 2 12 true
effect give @a[gamemode=!spectator] minecraft:slow_falling 25 0 true
