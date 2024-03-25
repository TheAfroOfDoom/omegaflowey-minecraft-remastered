# NOTE: we set these storage values because `x-bullets-upper/bullet/initialize` sets the bullet's
# rotations to them, and this is easier than refactoring that behavior out of that initialize function
data modify storage attack:x-bullets-upper bullet_yaw set from entity @s Rotation[0]
data modify storage attack:x-bullets-upper bullet_pitch set from entity @s Rotation[1]

function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/initialize

execute store result score @s attack.clock.i run data get storage attack:x-bullets-upper-save-states state_scores.attack_clock_i
