scoreboard players remove #melon iles 1
execute store result score #rr iles run random value 1..3
execute if score #rr iles matches 1 as @a[gamemode=!spectator] at @s run function iles:ev/r_melon
