# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.speed.z = #attack-bomb attack.speed.z

# Play summon animation (scale-in from 0)
function animated_java:bomb/animations/summon/play

# Remove tags
tag @s remove attack-bullet-new
