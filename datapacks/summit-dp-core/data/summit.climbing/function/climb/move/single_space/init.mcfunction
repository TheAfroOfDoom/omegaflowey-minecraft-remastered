data remove storage summit.climbing:master init.tile_data.entry
data modify storage summit.climbing:master init.tile_data.entry set from entity @s data.tile_data.entry
$execute unless data entity @s data.tile_data.$(direction).direct_0 unless data entity @s data.tile_data.$(direction).in unless data entity @s data.tile_data.$(direction).out run return 1
$data modify storage summit.climbing:master init.move set value {direction:"$(direction)"}
$execute if data entity @s data.tile_data.$(direction).direct_0 run data modify storage summit.climbing:master init.move.type set value "direct_0"
$execute if data entity @s data.tile_data.$(direction).out run data modify storage summit.climbing:master init.move.type set value "out"
$execute if data entity @s data.tile_data.$(direction).in run data modify storage summit.climbing:master init.move.type set value "in"
function summit.climbing:climb/move/single_space/set_movement_type with storage summit.climbing:master init.move
function summit.climbing:climb/redirect
execute if entity @s[tag=summit.climbing.initialized_climber] at @s run function summit.climbing:climb/mannequin/move/init with entity @s data
execute unless entity @s[tag=summit.climbing.initialized_climber] at @s run function summit.climbing:climb/mannequin/init
tag @s add summit.climbing.initialized_climber
execute if data storage summit.climbing:master init.tile_data.entry run return 1
execute if data storage summit.climbing:master {init: {move: {direction: "right", type: "in"}}} as @p[tag=summit.climbing.current_main, distance=..32] run return run function summit.climbing:climb/player/rotate/set_target/relative/init {target: 90, operation: "add"}
execute if data storage summit.climbing:master {init: {move: {direction: "right", type: "out"}}} as @p[tag=summit.climbing.current_main, distance=..32] run return run function summit.climbing:climb/player/rotate/set_target/relative/init {target: 90, operation: "remove"}
execute if data storage summit.climbing:master {init: {move: {direction: "left", type: "in"}}} as @p[tag=summit.climbing.current_main, distance=..32] run return run function summit.climbing:climb/player/rotate/set_target/relative/init {target: 90, operation: "remove"}
execute if data storage summit.climbing:master {init: {move: {direction: "left", type: "out"}}} as @p[tag=summit.climbing.current_main, distance=..32] run return run function summit.climbing:climb/player/rotate/set_target/relative/init {target: 90, operation: "add"}
