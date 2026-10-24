title @a times 5 50 15
title @a subtitle {"text":"Accroche-toi","color":"gray"}
title @a title {"text":"TORNADE","color":"white","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Une tornade vous emporte !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1 0.6
scoreboard players set #tornado iles 100
