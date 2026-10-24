clone ~-9 ~-8 ~-9 ~9 ~9 ~9 ~-9 ~-9 ~-9 replace force
playsound minecraft:block.water.ambient ambient @a ~ ~ ~ 3 0.6
scoreboard players add @s iles 1
tp @s ~ ~-1 ~
execute if score @s iles matches 45.. run kill @s
