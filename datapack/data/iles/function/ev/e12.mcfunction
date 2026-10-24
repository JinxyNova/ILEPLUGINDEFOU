title @a times 5 50 15
title @a subtitle {"text":"Bouge ! Vite !","color":"gray"}
title @a title {"text":"LE SOL S'EFFONDRE","color":"gold","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Le sol va s'effondrer sous vos pieds dans 3 secondes !","color":"red"}]
execute as @a at @s run playsound minecraft:block.gravel.break master @s ~ ~ ~ 1 0.5
execute as @a[gamemode=!spectator] at @s run particle minecraft:smoke ~ ~ ~ 1 0.1 1 0.05 30
schedule function iles:ev/collapse 60t
