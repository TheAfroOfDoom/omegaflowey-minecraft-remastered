# If cutscene doesn't have a specific terminate function, just proceed to attack phase

# Remove tags
tag @s remove boss_fight.phase.cutscene

# Set arena box variant back to default
$execute as $(arena_box_uuid) run function animated_java:omegaflowey_arena_box/variants/default/apply

# Re-animate main Omega Flowey models
function omegaflowey.entity:hostile/omega-flowey/animate

# Next phase
function omegaflowey.entity:directorial/boss_fight/summit/phase/attack/initialize
