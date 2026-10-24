title @a times 5 50 15
title @a subtitle {"text":"Impact imminent","color":"gray"}
title @a title {"text":"MÉTÉORITE GÉANTE","color":"dark_red","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Une énorme météorite arrive sur chaque joueur !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.8 0.7
execute as @a[gamemode=!spectator] at @s run function iles:ev/big_roll
