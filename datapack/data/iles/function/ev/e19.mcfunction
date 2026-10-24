title @a times 5 50 15
title @a subtitle {"text":"Brrr","color":"gray"}
title @a title {"text":"BLIZZARD","color":"aqua","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Une tempête de neige vous gèle !","color":"red"}]
execute as @a at @s run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 1 1
scoreboard players set #blizzard iles 200
effect give @a[gamemode=!spectator] minecraft:slowness 12 2 true
