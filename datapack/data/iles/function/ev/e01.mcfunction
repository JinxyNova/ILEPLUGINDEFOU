title @a times 5 50 15
title @a subtitle {"text":"Mets-toi à l'abri !","color":"gray"}
title @a title {"text":"PLUIE DE MÉTÉORITES","color":"dark_red","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des météorites s'écrasent partout !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.6 1
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 1
scoreboard players set #meteor iles 160
