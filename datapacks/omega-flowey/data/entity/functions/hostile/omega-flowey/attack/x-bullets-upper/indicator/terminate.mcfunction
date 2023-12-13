# TODO this needs to NOT be a distance check
execute as @e[tag=aj.upper_eye.root,sort=nearest,limit=1] run function animated_java:upper_eye/apply_variant/colorful

# Kill the indicator
kill @s
