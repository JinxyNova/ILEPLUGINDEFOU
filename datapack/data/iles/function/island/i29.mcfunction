fill ~-8 ~ ~-5 ~8 ~ ~5 end_stone_bricks
fill ~-5 ~ ~-8 ~5 ~ ~8 end_stone_bricks
fill ~-7 ~ ~-7 ~7 ~ ~7 end_stone_bricks
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 end_stone_bricks
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 end_stone_bricks
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 end_stone_bricks
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 end_stone_bricks
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 end_stone_bricks
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 end_stone_bricks
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 end_stone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 end_stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 end_stone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 end_stone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 end_stone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 end_stone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 end_stone
setblock ~ ~-6 ~ end_stone
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:the_end
setblock ~-1 ~ ~-2 end_portal_frame[eye=false,facing=south]
setblock ~-1 ~ ~2 end_portal_frame[eye=false,facing=north]
setblock ~ ~ ~-2 end_portal_frame[eye=false,facing=south]
setblock ~ ~ ~2 end_portal_frame[eye=false,facing=north]
setblock ~1 ~ ~-2 end_portal_frame[eye=false,facing=south]
setblock ~1 ~ ~2 end_portal_frame[eye=false,facing=north]
setblock ~-2 ~ ~-1 end_portal_frame[eye=false,facing=east]
setblock ~2 ~ ~-1 end_portal_frame[eye=false,facing=west]
setblock ~-2 ~ ~ end_portal_frame[eye=false,facing=east]
setblock ~2 ~ ~ end_portal_frame[eye=false,facing=west]
setblock ~-2 ~ ~1 end_portal_frame[eye=false,facing=east]
setblock ~2 ~ ~1 end_portal_frame[eye=false,facing=west]
setblock ~-5 ~1 ~-5 end_rod[facing=up]
setblock ~5 ~1 ~-5 end_rod[facing=up]
setblock ~-5 ~1 ~5 end_rod[facing=up]
setblock ~5 ~1 ~5 end_rod[facing=up]
setblock ~ ~1 ~5 chest[facing=north]{LootTable:"iles:chest/portail",CustomName:{text:"Les 12 yeux d'Ender",color:"light_purple"}}
setblock ~ ~1 ~-5 oak_sign[rotation=0]{front_text:{messages:["PORTAIL","VERS L'END","Pose les 12","yeux !"],color:"dark_purple"},is_waxed:1b}
title @a subtitle {"text":"ÎLE PORTAIL","color":"light_purple"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Pose les 12 yeux et va battre l'Ender Dragon !","color":"light_purple"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
