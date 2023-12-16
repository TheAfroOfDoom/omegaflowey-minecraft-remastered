# Summon laser
# function animated_java:finger_gun_blinking_line/summon
$summon minecraft:item_display $(x) 34.5 $(z) { CustomName: '"Finger-Guns Blinking Line"', Tags:["omega-flowey-remastered","groupable","hostile","omega-flowey","attack","finger-guns","finger-guns-laser","finger-guns-laser-new"], interpolation_duration:1, item_display:"head", item:{id:"minecraft:red_wool",Count:1b} }

# Copy group id to laser
execute store result storage group id int 1 run scoreboard players get @s group.id

# Initialize laser
execute as @e[tag=finger-guns-laser-new] run function entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/initialize with storage attack:finger-guns
