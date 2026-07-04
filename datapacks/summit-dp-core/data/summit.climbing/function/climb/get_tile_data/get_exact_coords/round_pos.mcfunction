$execute store result score #summit.climbing.coord_corrector_1 summit.climbing.int run data get entity @s Pos[$(index)] 100000
data modify storage summit.climbing:master rounding.negative set value ""
execute if score #summit.climbing.coord_corrector_1 summit.climbing.int matches ..-1 run function summit.climbing:climb/get_tile_data/get_exact_coords/negative
scoreboard players operation #summit.climbing.coord_corrector_2 summit.climbing.int = #summit.climbing.coord_corrector_1 summit.climbing.int
scoreboard players operation #summit.climbing.coord_corrector_1 summit.climbing.int /= 100000 summit.climbing.int
scoreboard players operation #summit.climbing.coord_corrector_2 summit.climbing.int %= 100000 summit.climbing.int
$data modify storage summit.climbing:master rounding.index set value $(index)
execute store result storage summit.climbing:master rounding.int int 1 run scoreboard players get #summit.climbing.coord_corrector_1 summit.climbing.int
execute if score #summit.climbing.coord_corrector_2 summit.climbing.int matches 96000..97000 run data modify storage summit.climbing:master rounding.float set value "96875"
execute if score #summit.climbing.coord_corrector_2 summit.climbing.int matches 45000..55000 run data modify storage summit.climbing:master rounding.float set value "5"
execute if score #summit.climbing.coord_corrector_2 summit.climbing.int matches 3100..3200 run data modify storage summit.climbing:master rounding.float set value "03125"
function summit.climbing:climb/get_tile_data/get_exact_coords/store_in_pos with storage summit.climbing:master rounding
