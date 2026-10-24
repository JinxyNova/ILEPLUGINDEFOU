title @a times 5 50 15
title @a subtitle {"text":"Ils volent","color":"gray"}
title @a title {"text":"ESCADRON DE PHANTOMS","color":"dark_blue","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des phantoms plongent sur vous !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 1 0.8
execute as @a[gamemode=!spectator] at @s run summon minecraft:phantom ~4 ~8 ~ {Size:1}
execute as @a[gamemode=!spectator] at @s run summon minecraft:phantom ~-4 ~8 ~ {Size:1}
execute as @a[gamemode=!spectator] at @s run summon minecraft:phantom ~ ~8 ~4 {Size:1}
execute as @a[gamemode=!spectator] at @s run summon minecraft:phantom ~ ~8 ~-4 {Size:1}
