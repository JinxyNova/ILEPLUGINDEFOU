title @a times 5 50 15
title @a subtitle {"text":"Ils arrivent","color":"gray"}
title @a title {"text":"INVASION DE ZOMBIES","color":"dark_green","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des zombies apparaissent autour de vous !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.zombie.ambient master @s ~ ~ ~ 1 0.7
execute as @a[gamemode=!spectator] at @s run summon minecraft:zombie ~4 ~ ~ {equipment:{head:{id:"minecraft:iron_helmet",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:zombie ~-4 ~ ~ {equipment:{head:{id:"minecraft:iron_helmet",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:zombie ~ ~ ~4 {equipment:{head:{id:"minecraft:iron_helmet",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:zombie ~ ~ ~-4 {equipment:{head:{id:"minecraft:iron_helmet",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:zombie ~3 ~ ~3 {equipment:{head:{id:"minecraft:iron_helmet",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:zombie ~-3 ~ ~-3 {equipment:{head:{id:"minecraft:iron_helmet",count:1}}}
