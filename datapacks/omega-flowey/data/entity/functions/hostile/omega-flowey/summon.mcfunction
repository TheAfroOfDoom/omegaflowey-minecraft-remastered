# Nose
function animated_java:nose/remove/all
execute positioned 0 33 -10 rotated 0 0 run function animated_java:nose/summon

# Lower eyes
function animated_java:lower_eye/remove/all
# Right-eye
execute positioned -5 40 -5 rotated 170 -10 run function animated_java:lower_eye/summon
# Left-eye
execute positioned 5 40 -5 rotated 10 10 run function animated_java:lower_eye/summon

# TV-screen
function animated_java:tv_screen/remove/all
execute positioned 0 47 -6 rotated 0 30 run function animated_java:tv_screen/summon

# Upper eyes
function animated_java:upper_eye/remove/all
# Right-eye
execute positioned -15.5 46 -4 rotated 160 -20 run function animated_java:upper_eye/summon
# Left-eye
execute positioned 16.5 46 -4 rotated 20 20 run function animated_java:upper_eye/summon

# Right-upper-eye pipe
function animated_java:pipe_upper_eye/remove/all
execute positioned -14 46.5 -6 rotated -20 20 run function animated_java:pipe_upper_eye/summon
# Left-upper-eye pipe
execute positioned 14 46.5 -6 rotated -160 -20 run function animated_java:pipe_upper_eye/summon

execute as @e[type=minecraft:item_display] run data modify entity @s teleport_duration set value 1
