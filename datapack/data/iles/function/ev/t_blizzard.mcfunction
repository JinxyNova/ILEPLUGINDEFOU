scoreboard players remove #blizzard iles 1
scoreboard players operation #bm iles = #blizzard iles
scoreboard players operation #bm iles %= #c20 iles
execute if score #bm iles matches 0 as @a[gamemode=!spectator] run damage @s 1 minecraft:freeze
execute as @a[gamemode=!spectator] at @s run particle minecraft:snowflake ~ ~1 ~ 1 0.5 1 0.05 4
