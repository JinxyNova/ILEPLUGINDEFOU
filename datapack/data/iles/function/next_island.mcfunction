scoreboard players add #jour iles 1
scoreboard players operation #timer iles = #duree iles
execute if score #jour iles matches 2..30 run scoreboard players operation #isle iles = #jour iles
execute if score #jour iles matches 2..30 run scoreboard players remove #isle iles 1
execute if score #jour iles matches 31.. store result score #isle iles run random value 1..28
scoreboard players set #mode iles 0
execute if score #jour iles matches 6 run scoreboard players set #mode iles 1
execute if score #jour iles matches 11 run scoreboard players set #mode iles 2
execute if score #jour iles matches 16 run scoreboard players set #mode iles 1
execute if score #jour iles matches 21 run scoreboard players set #mode iles 2
execute if score #jour iles matches 26 run scoreboard players set #mode iles 1
execute if score #jour iles matches 31.. store result score #r iles run random value 1..100
execute if score #jour iles matches 31.. if score #r iles matches 1..12 run scoreboard players set #mode iles 1
execute if score #jour iles matches 31.. if score #r iles matches 13..24 run scoreboard players set #mode iles 2
execute if score #mode iles matches 0 run function iles:pos_normal
execute if score #mode iles matches 1 run function iles:pos_head
execute if score #mode iles matches 2 run function iles:pos_glued
function iles:queue
