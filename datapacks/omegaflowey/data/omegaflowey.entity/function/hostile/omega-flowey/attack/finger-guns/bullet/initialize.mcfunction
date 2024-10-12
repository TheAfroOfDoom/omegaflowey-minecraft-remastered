function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

data merge entity @s {CustomName:"\"Finger-Guns Bullet\""}

# Set scores
scoreboard players operation @s omegaflowey.attack.speed.z = #omegaflowey.attack.finger-guns omegaflowey.attack.speed.z

# Play bullet shoot sound
stopsound @a hostile omega-flowey:attack.finger-guns.shoot
playsound omega-flowey:attack.finger-guns.shoot hostile @a ~ ~ ~ 5 1

# Add tags
tag @s add finger-guns
