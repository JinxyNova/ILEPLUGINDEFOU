title @a times 5 50 15
title @a subtitle {"text":"Splotch","color":"gray"}
title @a title {"text":"INVASION DE SLIMES","color":"green","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des slimes géants envahissent tout !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.slime.squish master @s ~ ~ ~ 1 0.7
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~4 ~ ~ {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~-4 ~ ~ {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~ ~ ~4 {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~ ~ ~-4 {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~3 ~ ~3 {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~-3 ~ ~-3 {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~3 ~ ~-3 {Size:2}
execute as @a[gamemode=!spectator] at @s run summon minecraft:slime ~-3 ~ ~3 {Size:2}
