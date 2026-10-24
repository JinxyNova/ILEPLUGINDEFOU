title @a times 10 70 20
title @a title [{"text":"JOUR ","color":"gold","bold":true},{"score":{"name":"#jour","objective":"iles"},"color":"yellow","bold":true}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.5 1
execute as @a at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 0.8 1
execute if score #mode iles matches 0 run tellraw @a [{"text":"Position : X ","color":"gray"},{"nbt":"x","storage":"iles:tmp","color":"white"},{"text":"  Z ","color":"gray"},{"nbt":"z","storage":"iles:tmp","color":"white"}]
execute if score #mode iles matches 1 run tellraw @a {"text":"ATTENTION : l'île est apparue AU-DESSUS D'UN JOUEUR !","color":"red","bold":true}
execute if score #mode iles matches 2 run tellraw @a {"text":"L'île est apparue COLLÉE à la base !","color":"green","bold":true}
