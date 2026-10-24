title @a times 5 50 15
title @a subtitle {"text":"La foudre frappe","color":"gray"}
title @a title {"text":"TEMPÊTE","color":"dark_purple","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Un orage violent s'abat sur vous !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1
weather thunder 1200
scoreboard players set #storm iles 400
