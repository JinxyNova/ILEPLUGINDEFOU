scoreboard objectives add iles dummy
scoreboard players set #c20 iles 20
scoreboard players set #c8 iles 8
scoreboard players set #c4 iles 4
scoreboard players set #c36 iles 36
scoreboard players set #c2 iles 2
scoreboard players set #c10 iles 10
execute unless score #duree iles matches 1.. run scoreboard players set #duree iles 6000
execute unless score #evduree iles matches 1.. run scoreboard players set #evduree iles 1800
execute unless score #evon iles matches 0..1 run scoreboard players set #evon iles 1
execute unless score #on iles matches 0..1 run scoreboard players set #on iles 0
bossbar add iles:next {"text":"Prochaine île"}
bossbar set iles:next color yellow
bossbar set iles:next visible false
bossbar add iles:cata {"text":"Catastrophe"}
bossbar set iles:cata color red
bossbar set iles:cata visible false
tellraw @a [{"text":"[Îles] ","color":"gold","bold":true},{"text":"Datapack chargé. Lance-le avec /function iles:start","color":"yellow"}]
