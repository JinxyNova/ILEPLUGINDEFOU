execute if score #on iles matches 1 run function iles:running
execute if score #meteor iles matches 1.. run function iles:ev/t_meteor
execute if score #tnt iles matches 1.. run function iles:ev/t_tnt
execute if score #anvil iles matches 1.. run function iles:ev/t_anvil
execute if score #melon iles matches 1.. run function iles:ev/t_melon
execute if score #storm iles matches 1.. run function iles:ev/t_storm
execute if score #quake iles matches 1.. run function iles:ev/t_quake
execute if score #tornado iles matches 1.. run function iles:ev/t_tornado
execute if score #blizzard iles matches 1.. run function iles:ev/t_blizzard
execute if entity @e[type=marker,tag=iles_flood,limit=1] run function iles:ev/t_flood
scoreboard players add #sinkt iles 1
execute if score #sinkt iles matches 30.. run function iles:sink_tick
