scoreboard players operation #idx iles = #jour iles
scoreboard players remove #idx iles 2
scoreboard players operation #dir iles = #idx iles
scoreboard players operation #dir iles %= #c8 iles
scoreboard players operation #ring iles = #idx iles
scoreboard players operation #ring iles /= #c8 iles
scoreboard players add #ring iles 1
execute if score #dir iles matches 0 run scoreboard players set #dx iles 0
execute if score #dir iles matches 0 run scoreboard players set #dz iles -1
execute if score #dir iles matches 1 run scoreboard players set #dx iles 1
execute if score #dir iles matches 1 run scoreboard players set #dz iles 0
execute if score #dir iles matches 2 run scoreboard players set #dx iles 0
execute if score #dir iles matches 2 run scoreboard players set #dz iles 1
execute if score #dir iles matches 3 run scoreboard players set #dx iles -1
execute if score #dir iles matches 3 run scoreboard players set #dz iles 0
execute if score #dir iles matches 4 run scoreboard players set #dx iles 1
execute if score #dir iles matches 4 run scoreboard players set #dz iles -1
execute if score #dir iles matches 5 run scoreboard players set #dx iles 1
execute if score #dir iles matches 5 run scoreboard players set #dz iles 1
execute if score #dir iles matches 6 run scoreboard players set #dx iles -1
execute if score #dir iles matches 6 run scoreboard players set #dz iles 1
execute if score #dir iles matches 7 run scoreboard players set #dx iles -1
execute if score #dir iles matches 7 run scoreboard players set #dz iles -1
scoreboard players operation #x iles = #dx iles
scoreboard players operation #x iles *= #ring iles
scoreboard players operation #x iles *= #c40 iles
scoreboard players operation #z iles = #dz iles
scoreboard players operation #z iles *= #ring iles
scoreboard players operation #z iles *= #c40 iles
scoreboard players set #y iles 100
