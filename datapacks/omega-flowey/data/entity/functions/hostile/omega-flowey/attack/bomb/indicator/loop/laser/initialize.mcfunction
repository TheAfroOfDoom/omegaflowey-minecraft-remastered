# Copy group id from parent indicator
function entity:group/copy with storage group

# Play laser sound (blink) once
playsound omega-flowey:attack.bomb.laser hostile @a ~ ~ ~ 5 1 1

# Remove tags
tag @s remove bomb-laser-new
