## Remove all animated java entities
# Omega Flowey model
function entity:hostile/omega-flowey/summon/remove_preexisting_models

# Attack models
function animated_java:dentata_snake_ball/remove/all
function animated_java:friendliness_pellet/remove/all
function animated_java:friendliness_pellet_ring/remove/all
function animated_java:projectile_star/remove/all

## Kill all `omega-flowey-remastered` entities
kill @e[tag=omega-flowey-remastered]

function entity:hostile/omega-flowey/attack/reset_scores
