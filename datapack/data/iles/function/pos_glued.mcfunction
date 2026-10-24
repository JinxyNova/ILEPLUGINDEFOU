scoreboard players add #glue iles 1
scoreboard players operation #g iles = #glue iles
scoreboard players operation #g iles %= #c4 iles
scoreboard players set #y iles 100
execute if score #g iles matches 0 run scoreboard players set #x iles 14
execute if score #g iles matches 0 run scoreboard players set #z iles 0
execute if score #g iles matches 1 run scoreboard players set #x iles 0
execute if score #g iles matches 1 run scoreboard players set #z iles 14
execute if score #g iles matches 2 run scoreboard players set #x iles -14
execute if score #g iles matches 2 run scoreboard players set #z iles 0
execute if score #g iles matches 3 run scoreboard players set #x iles 0
execute if score #g iles matches 3 run scoreboard players set #z iles -14
