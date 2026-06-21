scoreboard players operation $id summit.swing_id = @s summit.swing_id
scoreboard players set $found_seat summit.temp 0
execute as @e[tag=summit.swing_seat, predicate=summit.swings:id_match, distance=..10, limit=1, type=minecraft:item_display] run function summit.swings:swing/on_seat
execute if score $found_seat summit.temp matches 0 rotated as @s run return run function summit.swings:swing/respawn_seat
execute if entity @s[tag=summit.x_axis] store result score $pivot_x summit.temp run data get entity @s Pos[0] 1000000
execute if entity @s[tag=summit.z_axis] store result score $pivot_x summit.temp run data get entity @s Pos[2] 1000000
execute store result score $dx summit.temp run scoreboard players operation $bob_x summit.temp -= $pivot_x summit.temp
scoreboard players operation $dx summit.temp *= $gravityxmass summit.constants
scoreboard players operation $dx summit.temp += $player_torque summit.temp
scoreboard players operation $dx summit.temp /= $inertia summit.constants
execute store result storage summit:temp swings.degrees double 57.295779513 run scoreboard players get $dx summit.temp
execute store result score $dx summit.temp run data get storage summit:temp swings.degrees
execute store result storage summit:temp swings.damping double -0.02 run scoreboard players get @s summit.angular_velocity
execute store result score $damping summit.temp run data get storage summit:temp swings.damping
scoreboard players operation @s summit.angular_velocity += $damping summit.temp
scoreboard players operation @s summit.angular_velocity += $dx summit.temp
execute if score @s summit.angular_velocity < @s summit.min_velocity run scoreboard players operation @s summit.angular_velocity = @s summit.min_velocity
execute if score @s summit.angular_velocity > @s summit.max_velocity run scoreboard players operation @s summit.angular_velocity = @s summit.max_velocity
execute store result score $angle summit.temp run data get entity @s Rotation[1] 1000000
scoreboard players operation $angle summit.temp += @s summit.angular_velocity
execute unless score $has_player summit.temp matches 1 if score $angle summit.temp matches -500000..500000 if score @s summit.angular_velocity matches -500000..500000 run function summit.swings:swing/reset_motion
execute store success entity @s OnGround byte 1 store success score @s summit.toggle unless score @s summit.toggle matches 1
execute store result entity @s Rotation[1] double 0.000001 run scoreboard players get $angle summit.temp
execute rotated as @s run tp @e[tag=summit.swing_seat, predicate=summit.swings:id_match, distance=..10, limit=1, type=minecraft:item_display] ^ ^-5.5 ^
