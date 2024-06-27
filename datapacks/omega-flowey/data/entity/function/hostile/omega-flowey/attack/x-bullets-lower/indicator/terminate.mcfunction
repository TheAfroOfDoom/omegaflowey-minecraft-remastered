# TODO(47): this needs to NOT be a distance check
execute as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/variants/colorful/apply

# Kill the indicator
kill @s
