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
