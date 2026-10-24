title @a times 5 50 15
title @a subtitle {"text":"Tu es ENORME","color":"gray"}
title @a title {"text":"MODE GÉANT","color":"dark_green","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Vous êtes devenus des géants pendant 30 secondes !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.ravager.roar master @s ~ ~ ~ 1 0.7
execute as @a[gamemode=!spectator] run attribute @s minecraft:scale base set 3
schedule function iles:ev/reset_scale 600t
