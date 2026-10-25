scoreboard players set #c20 iles 20
scoreboard players set #c8 iles 8
scoreboard players set #c4 iles 4
scoreboard players set #c40 iles 40
scoreboard players set #c2 iles 2
scoreboard players set #c10 iles 10
execute unless score #duree iles matches 1.. run scoreboard players set #duree iles 6000
execute unless score #evduree iles matches 1.. run scoreboard players set #evduree iles 1800
execute unless score #evon iles matches 0..1 run scoreboard players set #evon iles 1
scoreboard players set #on iles 0
kill @e[type=marker,tag=iles_sink]
scoreboard players set #meteor iles 0
scoreboard players set #tnt iles 0
scoreboard players set #anvil iles 0
scoreboard players set #melon iles 0
scoreboard players set #storm iles 0
scoreboard players set #quake iles 0
scoreboard players set #tornado iles 0
scoreboard players set #blizzard iles 0
kill @e[type=marker,tag=iles_flood]
execute as @a run attribute @s minecraft:scale base set 1
forceload add -16 -16 15 15
schedule function iles:start2 10t
