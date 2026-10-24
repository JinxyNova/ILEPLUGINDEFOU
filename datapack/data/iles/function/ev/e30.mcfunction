title @a times 5 50 15
title @a subtitle {"text":"Surprise !","color":"gray"}
title @a title {"text":"RETOUR À LA BASE","color":"light_purple","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Tout le monde est téléporté à l'île de départ !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
tp @a[gamemode=!spectator] 0 101 0
