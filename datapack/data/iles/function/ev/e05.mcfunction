title @a times 5 50 15
title @a subtitle {"text":"Regarde en l'air","color":"gray"}
title @a title {"text":"PLUIE D'ENCLUMES","color":"gray","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des enclumes tombent du ciel !","color":"red"}]
execute as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0.8
scoreboard players set #anvil iles 120
