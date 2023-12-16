# Copy group id from parent indicator
function entity:group/copy with storage group

# Copy yaw from parent indicator
execute store result entity @s Rotation[0] float 1 run data get storage attack:finger-guns yaw
data modify entity @s Rotation[1] set value 0.0f

# Play blinking sound once
playsound omega-flowey:attack.finger-guns.blinking hostile @a ~ ~ ~ 3 1 1

# Remove tags
tag @s remove finger-guns-laser-new
