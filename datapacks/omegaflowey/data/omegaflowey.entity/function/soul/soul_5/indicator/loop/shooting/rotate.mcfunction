### rotate towards the next crosshair over some number of ticks

## calculate angle between gun's pointed direction and the crosshair
# math.0 = current yaw
execute store result score @s math.0 run data get entity @s Rotation[0]
# math.1 = yaw when facing crosshair
function omegaflowey.entity:soul/soul_5/indicator/loop/shooting/rotate/marker/summon
execute store result score @s math.1 run data get storage soul:soul_5.indicator yaw_to_crosshair

# normalize yaw ranges (-180..180 => 0..360)
execute unless score @s math.0 matches 0.. run scoreboard players add @s math.0 360
execute unless score @s math.1 matches 0.. run scoreboard players add @s math.1 360

scoreboard players operation @s math.const = @s math.1

# math.1 = angle from current yaw to crosshair
scoreboard players operation @s math.1 -= @s math.0

# here, diff can be -360..360. we want to limit this to -180..180, so...
# if Math.abs(diff) > 180, we actually want to rotate in the other direction (it is faster)
# scoreboard players operation @s math.2 = @s math.1
tag @s remove is_negative_diff
execute if score @s math.1 matches ..-1 run tag @s add is_negative_diff
execute if entity @s[tag=is_negative_diff] run scoreboard players operation @s math.1 *= #-1 math.const

# math.1 = diff
# math.2 = 360 - diff
scoreboard players operation @s math.2 = @s math.1
scoreboard players operation @s math.2 *= #-1 math.const
scoreboard players add @s math.2 360

# use the smaller absolute difference between `diff` and `360 - diff`
tag @s remove rotate_other_direction
execute if score @s math.2 < @s math.1 run tag @s add rotate_other_direction
execute if entity @s[tag=rotate_other_direction] run scoreboard players operation @s math.1 = @s math.2
execute if entity @s[tag=rotate_other_direction] run scoreboard players operation @s math.1 *= #-1 math.const

execute if entity @s[tag=is_negative_diff] run scoreboard players operation @s math.1 *= #-1 math.const

# stop rotating + shoot a bullet if we are facing the crosshair (eps = 5 degrees)
execute if score @s math.1 matches -5..5 run function omegaflowey.entity:soul/soul_5/indicator/loop/shooting/shoot_bullet with storage soul:soul_5.indicator
execute if score @s math.1 matches -5..5 run return 0

# ---
# else, rotate slightly more towards the crosshair
# TODO(131): this is linear but in Undertale it's not so fix that
# here, diff is -180..180
execute unless score @s math.1 matches 1.. run teleport @s ~ ~ ~ ~-9 ~
execute if score @s math.1 matches 1.. run teleport @s ~ ~ ~ ~9 ~
