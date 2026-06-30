attribute @s gravity modifier remove summit.wind:gravity
execute unless entity @e[type=item_display, tag=summit.wind.collision, distance=..255, limit=1] run return fail
tag @e[type=item_display, tag=summit.wind.collision] remove summit.wind.match
function #summit.wind:check_wind
execute unless entity @e[type=item_display, tag=summit.wind.match, distance=..255, limit=1] run return fail
execute store result score ball_x summit.wind.calc run data get entity @s Pos[0] 100
execute store result score ball_y summit.wind.calc run data get entity @s Pos[1] 100
execute store result score ball_z summit.wind.calc run data get entity @s Pos[2] 100
scoreboard players operation radius summit.wind.calc = radius summit.wind.data
tag @e[type=item_display, tag=summit.wind.collision] remove summit.wind.colliding
execute as @e[type=item_display, tag=summit.wind.match, distance=..255] run function summit.wind:physics/plane/check_ball_collision
execute unless entity @e[type=item_display, tag=summit.wind.colliding, distance=..255, limit=1] run scoreboard players set @s summit.wind.timer 0
execute unless entity @e[type=item_display, tag=summit.wind.colliding, distance=..255, limit=1] run return fail
execute if entity @e[type=item_display, tag=summit.wind.colliding, tag=summit.wind.has_gravity, limit=1] run attribute @s gravity modifier add summit.wind:gravity -0.04 add_value
scoreboard players add @s summit.wind.timer 1
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch 0
execute if score dist summit.wind.calc matches -99..0 run scoreboard players set $z player_motion.api.launch 100
execute if score dist summit.wind.calc matches -199..-100 run scoreboard players set $z player_motion.api.launch 500
execute if score dist summit.wind.calc matches -299..-200 run scoreboard players set $z player_motion.api.launch 700
execute if score dist summit.wind.calc matches -399..-300 run scoreboard players set $z player_motion.api.launch 1500
execute if score dist summit.wind.calc matches -499..-400 run scoreboard players set $z player_motion.api.launch 2000
execute if score dist summit.wind.calc matches -599..-500 run scoreboard players set $z player_motion.api.launch 5000
execute if score dist summit.wind.calc matches -699..-600 run scoreboard players set $z player_motion.api.launch 10000
execute if score dist summit.wind.calc matches -999..-700 run scoreboard players set $z player_motion.api.launch 20000
execute if score dist summit.wind.calc matches -1999..-1000 run scoreboard players set $z player_motion.api.launch 40000
execute if score dist summit.wind.calc matches -1999..0 rotated as @n[type=item_display, tag=summit.wind.colliding, distance=..255] run function player_motion:api/launch_local_xyz
execute if score dist summit.wind.calc matches ..-2000 run scoreboard players set @s spawn 1
execute if score @s summit.wind.timer matches 40.. run scoreboard players set @s spawn 1
