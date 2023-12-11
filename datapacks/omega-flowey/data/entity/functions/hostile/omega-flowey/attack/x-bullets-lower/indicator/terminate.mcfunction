# TODO: this has duplicate resume calls unnecessarily...
# shouldnt cause any bugs but is pretty silly and should rethink how we select the corresponding
# AJ lower_eye entity
# TODO this needs to NOT be a distance check
execute as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/animations/look_around/resume
execute as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/apply_variant/default

execute as @e[tag=boss_fight] run function entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/terminate/boss_fight

# Kill the indicator
kill @s
