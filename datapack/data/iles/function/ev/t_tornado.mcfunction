scoreboard players remove #tornado iles 1
execute as @a[gamemode=!spectator] at @s run tp @s ~ ~0.3 ~ ~25 ~
execute as @a[gamemode=!spectator] at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.05 3
execute if score #tornado iles matches 0 run effect give @a[gamemode=!spectator] minecraft:slow_falling 20 0 true
