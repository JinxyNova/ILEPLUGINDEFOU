title @a times 5 50 15
title @a subtitle {"text":"Meuh","color":"gray"}
title @a title {"text":"PLUIE DE VACHES","color":"white","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Il pleut des vaches !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.cow.ambient master @s ~ ~ ~ 1 0.6
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~-3 ~15 ~-2
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~2 ~15 ~-3
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~6 ~15 ~3
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~-1 ~15 ~-2
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~2 ~15 ~
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~-4 ~15 ~-6
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~5 ~15 ~-1
execute as @a[gamemode=!spectator] at @s run summon minecraft:cow ~1 ~15 ~4
