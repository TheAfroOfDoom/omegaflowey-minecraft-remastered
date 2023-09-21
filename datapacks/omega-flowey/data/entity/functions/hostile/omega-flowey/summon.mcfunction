# Lower eyes
function animated_java:lower_eye/remove/all
# Right-eye
execute positioned -5 38 -5 rotated 180 0 run function animated_java:lower_eye/summon
# Left-eye
execute positioned 5 38 -5 rotated 0 0 run function animated_java:lower_eye/summon

# TV-screen
function animated_java:tv_screen/remove/all
execute positioned 0 45 -6 rotated 0 15 run function animated_java:tv_screen/summon

# Upper eyes
function animated_java:upper_eye/remove/all
# Right-eye
execute positioned -15.5 44 -6 rotated 180 0 run function animated_java:upper_eye/summon
# Left-eye
execute positioned 16.5 44 -6 rotated 0 0 run function animated_java:upper_eye/summon
