title @a times 5 50 15
title @a subtitle {"text":"Attention à ta tête","color":"gray"}
title @a title {"text":"PLUIE DE LAVE","color":"gold","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"De la lave tombe sur vous !","color":"red"}]
execute as @a at @s run playsound minecraft:block.lava.pop master @s ~ ~ ~ 1 1
execute as @a[gamemode=!spectator] at @s run setblock ~2 ~5 ~ lava
execute as @a[gamemode=!spectator] at @s run setblock ~-2 ~5 ~ lava
execute as @a[gamemode=!spectator] at @s run setblock ~ ~5 ~2 lava
execute as @a[gamemode=!spectator] at @s run setblock ~ ~5 ~-2 lava
execute as @a[gamemode=!spectator] at @s run setblock ~3 ~5 ~3 lava
execute as @a[gamemode=!spectator] at @s run setblock ~-3 ~5 ~-3 lava
schedule function iles:ev/lava_clean 80t
