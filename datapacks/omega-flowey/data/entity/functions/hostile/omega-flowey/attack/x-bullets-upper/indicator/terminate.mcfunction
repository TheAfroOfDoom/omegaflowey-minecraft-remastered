# Pause upper_eye animations
# TODO: this has duplicate resume calls unnecessarily...
# shouldnt cause any bugs but is pretty silly and should rethink how we select the corresponding
# AJ upper_eye entity
# TODO this needs to NOT be a distance check
execute as @e[tag=aj.upper_eye.root,sort=nearest,limit=1] run function animated_java:upper_eye/animations/look_around/resume
execute as @e[tag=aj.upper_eye.root,sort=nearest,limit=1] run function animated_java:upper_eye/apply_variant/default

# Kill the indicator
kill @s
