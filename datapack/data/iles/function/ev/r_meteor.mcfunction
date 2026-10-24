data modify storage iles:ev b set value "magma_block"
data modify storage iles:ev h set value 28
data modify storage iles:ev amt set value "4.0"
function iles:ev/fall_roll
data modify storage iles:ev fuse set value 45
execute store result score #rr2 iles run random value 1..2
execute if score #rr2 iles matches 1 run function iles:ev/tnt_at with storage iles:ev
