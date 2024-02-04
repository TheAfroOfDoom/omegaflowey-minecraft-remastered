## Remove all animated java entities
# Omega Flowey model
function animated_java:lower_eye/remove/all
function animated_java:nose/remove/all
function animated_java:tv_screen/remove/all
function animated_java:upper_eye/remove/all
function animated_java:petal_pipe_lower/remove/all
function animated_java:petal_pipe_middle/remove/all

# Attack models
function animated_java:dentata_snake_ball/remove/all
function animated_java:friendliness_pellet/remove/all
function animated_java:friendliness_pellet_ring/remove/all
function animated_java:projectile_star/remove/all

## Kill all `omega-flowey-remastered` entities
kill @e[tag=omega-flowey-remastered]

function entity:hostile/omega-flowey/attack/reset_scores
