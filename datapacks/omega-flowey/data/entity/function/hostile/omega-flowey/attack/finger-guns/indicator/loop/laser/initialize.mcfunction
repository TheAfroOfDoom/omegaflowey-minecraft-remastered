function entity:hostile/omega-flowey/attack/shared/initialize

data modify entity @s CustomName set value '"Finger-Guns Laser"'

# Play laser sound (blink) once
playsound omega-flowey:attack.finger-guns.laser hostile @a ~ ~ ~ 5 1 1

# Add tags
tag @s add finger-guns
tag @s add finger-guns-laser

function gu:generate
