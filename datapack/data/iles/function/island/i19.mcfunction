fill ~-8 ~ ~-5 ~8 ~ ~5 obsidian
fill ~-5 ~ ~-8 ~5 ~ ~8 obsidian
fill ~-7 ~ ~-7 ~7 ~ ~7 obsidian
fill ~-7 ~-1 ~-4 ~7 ~-1 ~4 obsidian
fill ~-4 ~-1 ~-7 ~4 ~-1 ~7 obsidian
fill ~-6 ~-1 ~-6 ~6 ~-1 ~6 obsidian
fill ~-5 ~-2 ~-3 ~5 ~-2 ~3 obsidian
fill ~-3 ~-2 ~-5 ~3 ~-2 ~5 obsidian
fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 obsidian
fill ~-4 ~-3 ~-2 ~4 ~-3 ~2 blackstone
fill ~-2 ~-3 ~-4 ~2 ~-3 ~4 blackstone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 blackstone
fill ~-2 ~-4 ~-1 ~2 ~-4 ~1 blackstone
fill ~-1 ~-4 ~-2 ~1 ~-4 ~2 blackstone
fill ~-2 ~-4 ~-2 ~2 ~-4 ~2 blackstone
fill ~-1 ~-5 ~-1 ~1 ~-5 ~1 blackstone
setblock ~ ~-6 ~ blackstone
fill ~-5 ~ ~-5 ~5 ~ ~5 lava
fill ~-1 ~ ~-1 ~1 ~ ~1 obsidian
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/lave",CustomName:{text:"Coffre de feu",color:"red"}}
summon minecraft:magma_cube ~3 ~1 ~3 {Size:2,CustomName:{text:"Gérard le Magma",color:"red"},CustomNameVisible:1b,PersistenceRequired:1b}
title @a subtitle {"text":"Île Lave","color":"red"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"Le coffre est au milieu de la lave. Tu as pris un seau d'eau, j'espère ?","color":"red"}]
