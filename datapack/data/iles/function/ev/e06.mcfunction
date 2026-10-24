title @a times 5 50 15
title @a subtitle {"text":"Oui, des pastèques","color":"gray"}
title @a title {"text":"PLUIE DE PASTÈQUES","color":"green","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Il pleut des pastèques.","color":"red"}]
execute as @a at @s run playsound minecraft:entity.villager.celebrate master @s ~ ~ ~ 1 1
scoreboard players set #melon iles 140
