execute positioned 0 100 0 run function iles:island/start
forceload remove -16 -16 15 15
setworldspawn 0 101 0
execute as @a run spawnpoint @s 0 101 0
tp @a 0 101 0
scoreboard players set #jour iles 1
scoreboard players operation #timer iles = #duree iles
scoreboard players set #t20 iles 0
scoreboard players set #sinkt iles 0
scoreboard players set #glue iles 0
scoreboard players set #on iles 1
bossbar set iles:next visible true
title @a times 10 70 20
title @a subtitle {"text":"1 île. Le reste, c'est du vide.","color":"gray"}
title @a title {"text":"JOUR 1","color":"gold","bold":true}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tellraw @a [{"text":"[Îles] ","color":"gold","bold":true},{"text":"Chaque jour, une nouvelle île apparaît. Survis, construis des ponts et va battre l'Ender Dragon !","color":"yellow"}]
scoreboard players operation #evtimer iles = #evduree iles
execute if score #evon iles matches 1 run bossbar set iles:cata visible true
