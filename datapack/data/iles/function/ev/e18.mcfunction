title @a times 5 50 15
title @a subtitle {"text":"Tu es minuscule","color":"gray"}
title @a title {"text":"MODE MINI","color":"yellow","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Vous avez rétréci pendant 30 secondes !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~ 1 1.5
execute as @a[gamemode=!spectator] run attribute @s minecraft:scale base set 0.35
schedule function iles:ev/reset_scale 600t
