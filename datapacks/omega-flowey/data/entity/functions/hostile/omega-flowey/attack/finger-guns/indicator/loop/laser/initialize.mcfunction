# Copy group id from parent indicator
function entity:group/copy with storage group

# Play laser sound (blink) once
playsound omega-flowey:attack.finger-guns.laser hostile @a ~ ~ ~ 3 1 1

# Remove tags
tag @s remove finger-guns-laser-new
