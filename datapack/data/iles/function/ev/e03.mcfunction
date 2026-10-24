title @a times 5 50 15
title @a subtitle {"text":"L'eau monte...","color":"gray"}
title @a title {"text":"INONDATION","color":"blue","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Le niveau de l'eau monte autour de vous !","color":"red"}]
execute as @a at @s run playsound minecraft:ambient.underwater.enter master @s ~ ~ ~ 1 1
execute as @a at @s run playsound minecraft:entity.dolphin.splash master @s ~ ~ ~ 1 1
execute as @a[gamemode=!spectator] at @s run summon minecraft:marker ~ ~ ~ {Tags:["iles_flood"]}
