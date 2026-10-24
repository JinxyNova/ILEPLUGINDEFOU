tag @a remove iles_target
tag @r add iles_target
execute store result score #x iles run data get entity @a[tag=iles_target,limit=1] Pos[0]
execute store result score #y iles run data get entity @a[tag=iles_target,limit=1] Pos[1]
execute store result score #z iles run data get entity @a[tag=iles_target,limit=1] Pos[2]
scoreboard players add #y iles 14
tag @a remove iles_target
