scoreboard players set #on iles 0
bossbar set iles:next visible false
bossbar set iles:cata visible false
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
tellraw @a {"text":"[Îles] Arrêté.","color":"red"}
