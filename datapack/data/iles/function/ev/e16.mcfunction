title @a times 5 50 15
title @a subtitle {"text":"Boing boing","color":"gray"}
title @a title {"text":"GRAVITÉ LUNAIRE","color":"light_purple","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"La gravité a disparu !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1
effect give @a[gamemode=!spectator] minecraft:jump_boost 40 6 true
effect give @a[gamemode=!spectator] minecraft:slow_falling 40 0 true
