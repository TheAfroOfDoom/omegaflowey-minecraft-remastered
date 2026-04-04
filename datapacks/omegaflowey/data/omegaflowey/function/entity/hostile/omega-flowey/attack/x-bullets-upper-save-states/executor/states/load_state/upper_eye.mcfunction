execute store result storage omegaflowey:attack.x-bullets-upper-save-states frame int 1 run \
  scoreboard players get #omegaflowey.attack.x-bullets-upper-save-states aj.omegaflowey_look_around.frame
function animated_java:omegaflowey_upper_eye/animations/omegaflowey_look_around/apply_frame with storage omegaflowey:attack.x-bullets-upper-save-states
tag @s remove aj.omegaflowey_upper_eye.animation.omegaflowey_look_around.playing
function animated_java:omegaflowey_upper_eye/variants/colorful/apply

# TODO(117): this could maybe also save frame indices of each flowey model to give a better effect of "loading", but thats a fair bit of code kinda
