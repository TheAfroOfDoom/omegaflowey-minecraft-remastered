function entity:hostile/omega-flowey/attack/shared/bullet/initialize

data modify entity @s CustomName set value '"Homing-Vines Bullet"'

# Set scores
scoreboard players operation @s attack.speed.z = #attack-homing-vines attack.speed.z

# Play bullet summon sound
# This also stops any already-playing summon sounds to accurately match what Undertale's homing-vines attack sounds like
stopsound @a hostile omega-flowey:attack.homing-vines.summon
playsound omega-flowey:attack.homing-vines.summon hostile @a ~ ~ ~ 5 1

# Add tags
tag @s add homing-vines
