title @a times 5 50 15
title @a subtitle {"text":"Les illagers arrivent","color":"gray"}
title @a title {"text":"RAID","color":"dark_red","bold":true}
tellraw @a [{"text":"[CATASTROPHE] ","color":"dark_red","bold":true},{"text":"Des vindicateurs attaquent !","color":"red"}]
execute as @a at @s run playsound minecraft:event.raid.horn master @s ~ ~ ~ 1 1
execute as @a[gamemode=!spectator] at @s run summon minecraft:vindicator ~4 ~ ~ {equipment:{mainhand:{id:"minecraft:iron_axe",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:vindicator ~-4 ~ ~ {equipment:{mainhand:{id:"minecraft:iron_axe",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:vindicator ~ ~ ~4 {equipment:{mainhand:{id:"minecraft:iron_axe",count:1}}}
execute as @a[gamemode=!spectator] at @s run summon minecraft:vindicator ~ ~ ~-4 {equipment:{mainhand:{id:"minecraft:iron_axe",count:1}}}
