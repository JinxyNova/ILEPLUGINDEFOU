title @a times 5 50 15
title @a subtitle {"text":"Ça va faire boum","color":"gray"}
title @a title {"text":"PLUIE DE TNT","color":"red","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Du TNT tombe du ciel !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1 1
scoreboard players set #tnt iles 120
