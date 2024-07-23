# Summon bullet
function animated_java:act_button/summon { args: {} }

# Initialize bullet
execute as @e[tag=act-button-new] at @s run function entity:soul/soul_5/act_button/initialize with storage soul:soul_5.indicator
