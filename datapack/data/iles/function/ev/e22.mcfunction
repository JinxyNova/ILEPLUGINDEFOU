title @a times 5 50 15
title @a subtitle {"text":"Plus rien ne se voit","color":"gray"}
title @a title {"text":"NUIT NOIRE","color":"dark_gray","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"La nuit tombe d'un coup !","color":"red"}]
execute as @a at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 1 1
time set midnight
effect give @a[gamemode=!spectator] minecraft:darkness 15 0 true
effect give @a[gamemode=!spectator] minecraft:blindness 3 0 true
