scoreboard players remove #timer iles 1
execute store result bossbar iles:next value run scoreboard players get #timer iles
scoreboard players add #t20 iles 1
execute if score #t20 iles matches 20.. run function iles:every_second
execute if score #evon iles matches 1 run scoreboard players remove #evtimer iles 1
execute if score #evon iles matches 1 if score #evtimer iles matches ..0 run function iles:ev/roll
execute if score #timer iles matches ..0 run function iles:next_island
