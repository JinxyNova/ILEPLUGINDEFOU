scoreboard players add @s iles 1
execute if score @s iles matches ..6 run fill ~-8 ~ ~-8 ~8 ~ ~8 water replace air
execute if score @s iles matches ..6 run tp @s ~ ~1 ~
execute if score @s iles matches 14 run fill ~-8 ~-6 ~-8 ~8 ~ ~8 air replace water
execute if score @s iles matches 14 run kill @s
