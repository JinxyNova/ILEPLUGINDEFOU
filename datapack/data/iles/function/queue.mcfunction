execute store result storage iles:tmp x int 1 run scoreboard players get #x iles
execute store result storage iles:tmp y int 1 run scoreboard players get #y iles
execute store result storage iles:tmp z int 1 run scoreboard players get #z iles
function iles:forceload_add with storage iles:tmp
schedule function iles:finish 10t
