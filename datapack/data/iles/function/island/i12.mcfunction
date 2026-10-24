fill ~-8 ~ ~-5 ~8 ~ ~5 red_sand
fill ~-5 ~ ~-8 ~5 ~ ~8 red_sand
fill ~-7 ~ ~-7 ~7 ~ ~7 red_sand
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 orange_terracotta
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 orange_terracotta
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 orange_terracotta
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 orange_terracotta
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 orange_terracotta
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 orange_terracotta
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 terracotta
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 terracotta
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 terracotta
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 terracotta
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 terracotta
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 terracotta
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 terracotta
setblock ~ ~-6 ~ terracotta
fillbiome ~-10 ~-10 ~-10 ~10 ~12 ~10 minecraft:badlands
fill ~-4 ~1 ~-3 ~-4 ~3 ~-3 cactus
fill ~4 ~1 ~3 ~4 ~3 ~3 cactus
setblock ~2 ~1 ~-4 dead_bush
setblock ~-3 ~1 ~2 chest[facing=east]{LootTable:"iles:chest/cheval",CustomName:{text:"Coffre du cowboy",color:"gold"}}
summon minecraft:horse ~1 ~1 ~1 {Tame:1b,CustomName:{text:"Éclair",color:"gold"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Badlands","color":"gold"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Un cheval apprivoisé t'attend. Éclair, c'est son nom.","color":"gold"}]
