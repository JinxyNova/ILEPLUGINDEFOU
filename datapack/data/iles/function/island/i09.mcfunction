fill ~-8 ~ ~-5 ~8 ~ ~5 grass_block
fill ~-5 ~ ~-8 ~5 ~ ~8 grass_block
fill ~-7 ~ ~-7 ~7 ~ ~7 grass_block
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 dirt
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 dirt
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 dirt
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 dirt
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 dirt
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 dirt
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 stone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 stone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 stone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 stone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 stone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 stone
setblock ~ ~-6 ~ stone
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:plains
setblock ~ ~1 ~ stone
setblock ~ ~1 ~1 stone_button[face=wall,facing=south]
setblock ~ ~ ~ tnt
fill ~-1 ~-2 ~-1 ~1 ~-1 ~1 tnt
setblock ~ ~1 ~3 oak_sign[rotation=0]{front_text:{messages:["NE PAS","APPUYER SUR","LE BOUTON","ROUGE"],color:"red"},is_waxed:1b}
setblock ~-5 ~1 ~-3 chest[facing=east]{LootTable:"iles:chest/diamants",CustomName:{text:"Coffre à diamants (tranquille)",color:"aqua"}}
title @a subtitle {"text":"Île Bouton Rouge","color":"red"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Il y a un bouton. Ne l'appuie surtout pas. Surtout pas.","color":"red"}]
