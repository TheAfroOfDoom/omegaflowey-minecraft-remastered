# Summon bullet
function animated_java:soul_5_bullet/summon { args: {} }

# Initialize bullet
execute as @e[tag=soul-bullet-new] at @s run function entity:soul/soul_5/bullet/initialize with storage soul:soul_5.indicator
