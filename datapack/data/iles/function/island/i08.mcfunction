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
fill ~-4 ~ ~-4 ~4 ~ ~4 farmland[moisture=7]
setblock ~ ~ ~ water
fill ~-4 ~1 ~-4 ~-1 ~1 ~4 wheat[age=7]
fill ~1 ~1 ~-4 ~4 ~1 ~ carrots[age=7]
fill ~1 ~1 ~2 ~4 ~1 ~4 potatoes[age=7]
setblock ~ ~1 ~6 chest[facing=north]{LootTable:"iles:chest/ferme",CustomName:{text:"Coffre du fermier",color:"green"}}
summon minecraft:cow ~ ~1 ~3 {PersistenceRequired:1b}
summon minecraft:cow ~ ~1 ~ {PersistenceRequired:1b}
summon minecraft:cow ~ ~1 ~-3 {PersistenceRequired:1b}
summon minecraft:pig ~ ~1 ~-3 {PersistenceRequired:1b}
summon minecraft:pig ~ ~1 ~4 {PersistenceRequired:1b}
summon minecraft:pig ~ ~1 ~2 {PersistenceRequired:1b}
summon minecraft:sheep ~ ~1 ~-2 {PersistenceRequired:1b}
summon minecraft:sheep ~ ~1 ~1 {PersistenceRequired:1b}
summon minecraft:chicken ~ ~1 ~-2 {PersistenceRequired:1b}
summon minecraft:chicken ~ ~1 ~3 {PersistenceRequired:1b}
summon minecraft:chicken ~ ~1 ~2 {PersistenceRequired:1b}
summon minecraft:chicken ~ ~1 ~-4 {PersistenceRequired:1b}
title @a subtitle {"text":"Île Ferme","color":"green"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"De quoi manger pendant 10 jours. Merci les animaux !","color":"green"}]
