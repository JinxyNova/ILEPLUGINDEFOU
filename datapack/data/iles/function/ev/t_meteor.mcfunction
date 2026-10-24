scoreboard players remove #meteor iles 1
execute store result score #rr iles run random value 1..14
execute if score #rr iles matches 1 as @a[gamemode=!spectator] at @s run function iles:ev/r_meteor
