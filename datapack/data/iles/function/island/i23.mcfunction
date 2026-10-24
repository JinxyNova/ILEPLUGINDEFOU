fill ~-7 ~ ~-4 ~7 ~ ~4 yellow_concrete
fill ~-4 ~ ~-7 ~4 ~ ~7 yellow_concrete
fill ~-6 ~ ~-6 ~6 ~ ~6 yellow_concrete
fill ~-6 ~-1 ~-4 ~6 ~-1 ~4 orange_concrete
fill ~-4 ~-1 ~-6 ~4 ~-1 ~6 orange_concrete
fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 orange_concrete
fill ~-4 ~-2 ~-2 ~4 ~-2 ~2 orange_concrete
fill ~-2 ~-2 ~-4 ~2 ~-2 ~4 orange_concrete
fill ~-3 ~-2 ~-3 ~3 ~-2 ~3 orange_concrete
fill ~-3 ~-3 ~-2 ~3 ~-3 ~2 stone
fill ~-2 ~-3 ~-3 ~2 ~-3 ~3 stone
fill ~-3 ~-3 ~-3 ~3 ~-3 ~3 stone
fill ~-1 ~-4 ~-1 ~1 ~-4 ~1 stone
setblock ~ ~-5 ~ stone
setblock ~-4 ~1 ~ chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre n°1",color:"gold"}}
setblock ~-2 ~1 ~-3 chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre n°2",color:"gold"}}
setblock ~ ~1 ~ chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre n°3",color:"gold"}}
setblock ~2 ~1 ~3 chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre n°4",color:"gold"}}
setblock ~4 ~1 ~ chest[facing=south]{LootTable:"iles:chest/loterie",CustomName:{text:"Coffre n°5",color:"gold"}}
title @a subtitle {"text":"Île Casino","color":"gold"}
tellraw @a [{"text":">> ","color":"gray"},{"text":"5 coffres loto. Prie.","color":"gold"}]
