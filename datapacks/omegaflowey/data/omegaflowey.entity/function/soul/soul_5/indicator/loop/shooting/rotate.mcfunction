### rotate towards the next crosshair over some number of ticks

## calculate angle between gun's pointed direction and the crosshair
# omegaflowey.math.0 = current yaw
execute store result score @s omegaflowey.math.0 run data get entity @s Rotation[0] 100
# omegaflowey.math.1 = yaw when facing crosshair
function omegaflowey.entity:soul/soul_5/indicator/loop/shooting/rotate/marker/summon
execute store result score @s omegaflowey.math.1 run data get storage omegaflowey:soul.5.indicator yaw_to_crosshair

# normalize yaw ranges (-180..180 => 0..360)
execute unless score @s omegaflowey.math.0 matches 0.. run scoreboard players add @s omegaflowey.math.0 36000
execute unless score @s omegaflowey.math.1 matches 0.. run scoreboard players add @s omegaflowey.math.1 36000

scoreboard players operation @s omegaflowey.math.const = @s omegaflowey.math.1

# omegaflowey.math.1 = angle from current yaw to crosshair
scoreboard players operation @s omegaflowey.math.1 -= @s omegaflowey.math.0

# here, diff can be -360..360. we want to limit this to -180..180, so...
# if omegaflowey.math.abs(diff) > 180, we actually want to rotate in the other direction (it is faster)
# scoreboard players operation @s omegaflowey.math.2 = @s omegaflowey.math.1
tag @s remove is_negative_diff
execute if score @s omegaflowey.math.1 matches ..-1 run tag @s add is_negative_diff
execute if entity @s[tag=is_negative_diff] run scoreboard players operation @s omegaflowey.math.1 *= #omegaflowey.const.-1 omegaflowey.math.const

# omegaflowey.math.1 = diff
# omegaflowey.math.2 = 360 - diff
scoreboard players operation @s omegaflowey.math.2 = @s omegaflowey.math.1
scoreboard players operation @s omegaflowey.math.2 *= #omegaflowey.const.-1 omegaflowey.math.const
scoreboard players add @s omegaflowey.math.2 36000

# use the smaller absolute difference between `diff` and `360 - diff`
tag @s remove rotate_other_direction
execute if score @s omegaflowey.math.2 < @s omegaflowey.math.1 run tag @s add rotate_other_direction
execute if entity @s[tag=rotate_other_direction] run scoreboard players operation @s omegaflowey.math.1 = @s omegaflowey.math.2
execute if entity @s[tag=rotate_other_direction] run scoreboard players operation @s omegaflowey.math.1 *= #omegaflowey.const.-1 omegaflowey.math.const

execute if entity @s[tag=is_negative_diff] run scoreboard players operation @s omegaflowey.math.1 *= #omegaflowey.const.-1 omegaflowey.math.const

# stop rotating + shoot a bullet if we are facing the crosshair (eps = 4.6 degrees, just over the 9 degree rotational velocity)
execute if score @s omegaflowey.math.1 matches -460..460 run function omegaflowey.entity:soul/soul_5/indicator/loop/shooting/shoot_bullet with storage omegaflowey:soul.5.indicator
execute if score @s omegaflowey.math.1 matches -460..460 run return 0

# ---
# else, rotate slightly more towards the crosshair
# TODO(131): this is linear but in Undertale it's not so fix that
# here, diff is -180..180
execute unless score @s omegaflowey.math.1 matches 1.. run rotate @s ~-9 ~
execute if score @s omegaflowey.math.1 matches 1.. run rotate @s ~9 ~
