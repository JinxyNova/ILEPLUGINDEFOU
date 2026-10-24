scoreboard players remove #quake iles 1
scoreboard players operation #qm iles = #quake iles
scoreboard players operation #qm iles %= #c2 iles
execute if score #qm iles matches 0 as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~6 ~3
execute if score #qm iles matches 1 as @a[gamemode=!spectator] at @s run tp @s ~ ~ ~ ~-6 ~-3
execute as @a[gamemode=!spectator] at @s run particle minecraft:poof ~ ~ ~ 1 0.1 1 0.05 3
scoreboard players operation #q10 iles = #quake iles
scoreboard players operation #q10 iles %= #c10 iles
execute if score #q10 iles matches 0 as @a at @s run playsound minecraft:block.stone.break master @s ~ ~ ~ 1 0.5
