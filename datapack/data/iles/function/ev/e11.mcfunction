title @a times 5 50 15
title @a subtitle {"text":"Tout tremble","color":"gray"}
title @a title {"text":"TREMBLEMENT DE TERRE","color":"gold","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"La terre tremble !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.6 0.5
scoreboard players set #quake iles 160
effect give @a[gamemode=!spectator] minecraft:slowness 8 1 true
effect give @a[gamemode=!spectator] minecraft:nausea 8 0 true
