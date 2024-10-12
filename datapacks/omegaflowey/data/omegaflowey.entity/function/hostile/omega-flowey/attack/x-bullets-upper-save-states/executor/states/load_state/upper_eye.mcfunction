execute store result storage attack:x-bullets-upper-save-states frame int 1 run scoreboard players get #omegaflowey.attack.x-bullets-upper-save-states aj.frame
function animated_java:upper_eye/animations/look_around/apply_frame with storage attack:x-bullets-upper-save-states
tag @s remove aj.upper_eye.animation.look_around.playing
function animated_java:upper_eye/variants/colorful/apply

# TODO(117): this could maybe also save frame indices of each flowey model to give a better effect of "loading", but thats a fair bit of code kinda
