scoreboard players set #t20 iles 0
scoreboard players operation #sec iles = #timer iles
scoreboard players operation #sec iles /= #c20 iles
execute store result bossbar iles:next max run scoreboard players get #duree iles
bossbar set iles:next players @a
bossbar set iles:next name [{"text":"JOUR ","color":"gold","bold":true},{"score":{"name":"#jour","objective":"iles"},"color":"yellow","bold":true},{"text":"   |   Prochaine île dans ","color":"white"},{"score":{"name":"#sec","objective":"iles"},"color":"aqua"},{"text":"s","color":"aqua"}]
execute if score #sec iles matches 1..5 as @a at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.6
execute if score #sec iles matches 1..5 run title @a actionbar [{"text":"Nouvelle île dans ","color":"red"},{"score":{"name":"#sec","objective":"iles"},"color":"yellow"}]
scoreboard players operation #evsec iles = #evtimer iles
scoreboard players operation #evsec iles /= #c20 iles
execute store result bossbar iles:cata max run scoreboard players get #evduree iles
execute store result bossbar iles:cata value run scoreboard players get #evtimer iles
bossbar set iles:cata players @a
bossbar set iles:cata name [{"text":"CATASTROPHE dans ","color":"red","bold":true},{"score":{"name":"#evsec","objective":"iles"},"color":"yellow","bold":true},{"text":"s","color":"yellow"}]
execute if score #evon iles matches 1 if score #evsec iles matches 1..3 run title @a actionbar {"text":"CATASTROPHE IMMINENTE !","color":"dark_red","bold":true}
