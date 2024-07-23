# Summon bullet
# TODO(127): this should maybe also increase in scale a bit upon summon, similar to the act_button/soul_5 animation
function animated_java:soul_5_bullet/summon { args: {} }

# Initialize bullet
execute as @e[tag=soul-bullet-new] at @s run function entity:soul/soul_5/bullet/initialize with storage soul:soul_5.indicator
