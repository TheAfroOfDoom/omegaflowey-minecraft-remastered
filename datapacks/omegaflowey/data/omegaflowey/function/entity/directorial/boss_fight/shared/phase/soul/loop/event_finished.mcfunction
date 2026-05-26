tag @s remove has_active_soul_event

function omegaflowey:entity/directorial/boss_fight/shared/phase/soul/static with storage omegaflowey:bossfight

# Delete floating soul model
$execute as $(soul_model_uuid) run function aj:omegaflowey_soul/remove/this

# TODO(322): change this after summit-2026
function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/initialize/disable_soul_event_3_barriers
