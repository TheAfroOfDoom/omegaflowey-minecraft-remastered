# If cutscene doesn't have a specific terminate function, just proceed to attack phase

# Remove tags
tag @s remove boss_fight.phase.cutscene

# Begin animating largesidevines/nose at full speed
$execute as $(large_side_vine_left_uuid) run function omegaflowey.entity:hostile/omega-flowey/animate/large_side_vine/resume_normal_from_slow/left
$execute as $(large_side_vine_right_uuid) run function omegaflowey.entity:hostile/omega-flowey/animate/large_side_vine/resume_normal_from_slow/right
$execute as $(model_nose_uuid) run function animated_java:omegaflowey_nose/animations/omegaflowey_move/tween { duration: 1, to_frame: 1 }

# Re-animate main Omega Flowey models
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine omegaflowey.global.flag 1
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose omegaflowey.global.flag 1
function omegaflowey.entity:hostile/omega-flowey/animate
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose omegaflowey.global.flag 0
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine omegaflowey.global.flag 0

# Next phase
function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize with storage omegaflowey:bossfight
