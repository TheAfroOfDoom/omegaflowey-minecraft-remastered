schedule function summit.zipline:move_ziplines 1 replace
execute unless function summit.zipline:move/start_timer run return fail
execute if entity @s[tag=summit.finished_zipline] run return run execute if function summit.zipline:move/stop_timer rotated as @s run function summit.zipline:move/stop
execute if entity @s[tag=!summit.empty_zipline, predicate=!summit.zipline:player_passenger] run function summit.zipline:move/dismount/main
scoreboard players operation $source_rotation_abs summit.temp = @s summit.zipline_rotation_abs
execute on passengers if entity @s[type=minecraft:player] run function summit.zipline:collision/main
execute store result storage summit:temp zipline.speed double 0.001 run scoreboard players add @s summit.zipline_speed 20
data modify storage summit:temp zipline.target set from entity @s data.summit_zipline.target
function summit.zipline:move/macro with storage summit:temp zipline
execute if predicate {condition: "minecraft:entity_properties", entity: "this", predicate: {periodic_tick: 10}} at @s run playsound summit_ziplines:block.zipline.move block @a ~ ~ ~ 5 1
