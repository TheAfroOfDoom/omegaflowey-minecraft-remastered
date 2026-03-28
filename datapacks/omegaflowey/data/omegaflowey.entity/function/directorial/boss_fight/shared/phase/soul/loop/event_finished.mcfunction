tag @s remove has_active_soul_event

function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/static with storage omegaflowey:bossfight

# Delete floating soul model
$execute as $(soul_model_uuid) run function animated_java:omegaflowey_soul/remove/this

function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/disable_soul_event_3_barriers
