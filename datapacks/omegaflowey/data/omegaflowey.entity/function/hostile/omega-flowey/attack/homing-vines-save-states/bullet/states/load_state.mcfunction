# NOTE: we set these storage values because `homing-vines/bullet/initialize` sets the bullet's
# rotations to them, and this is easier than refactoring that behavior out of that initialize function
data modify storage omegaflowey:attack.homing-vines bullet_yaw set from entity @s Rotation[0]
data modify storage omegaflowey:attack.homing-vines bullet_pitch set from entity @s Rotation[1]

function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/bullet/initialize

execute store result score @s omegaflowey.attack.clock.i run data get storage omegaflowey:attack.homing-vines-save-states state_scores.attack_clock_i
