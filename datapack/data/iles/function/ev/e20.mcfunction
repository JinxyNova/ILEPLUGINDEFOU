title @a times 5 50 15
title @a subtitle {"text":"Il fait chaud","color":"gray"}
title @a title {"text":"CANICULE","color":"red","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Une vague de chaleur vous épuise !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 1 0.6
effect give @a[gamemode=!spectator] minecraft:hunger 30 3 true
effect give @a[gamemode=!spectator] minecraft:weakness 30 1 true
effect give @a[gamemode=!spectator] minecraft:mining_fatigue 30 0 true
