title @a times 5 50 15
title @a subtitle {"text":"Chut...","color":"gray"}
title @a title {"text":"PLUIE DE CREEPERS","color":"green","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des creepers tombent du ciel !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 1 1
execute as @a[gamemode=!spectator] at @s run summon minecraft:creeper ~6 ~14 ~5
execute as @a[gamemode=!spectator] at @s run summon minecraft:creeper ~4 ~14 ~-5
execute as @a[gamemode=!spectator] at @s run summon minecraft:creeper ~2 ~14 ~5
execute as @a[gamemode=!spectator] at @s run summon minecraft:creeper ~-4 ~14 ~
execute as @a[gamemode=!spectator] at @s run summon minecraft:creeper ~-3 ~14 ~-3
execute as @a[gamemode=!spectator] at @s run summon minecraft:creeper ~-6 ~14 ~-2
