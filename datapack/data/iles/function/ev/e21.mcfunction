title @a times 5 50 15
title @a subtitle {"text":"Retiens ta respiration","color":"gray"}
title @a title {"text":"NUAGE TOXIQUE","color":"dark_green","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Un nuage toxique vous empoisonne !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.witch.ambient master @s ~ ~ ~ 1 0.8
effect give @a[gamemode=!spectator] minecraft:poison 10 1 true
effect give @a[gamemode=!spectator] minecraft:nausea 10 0 true
