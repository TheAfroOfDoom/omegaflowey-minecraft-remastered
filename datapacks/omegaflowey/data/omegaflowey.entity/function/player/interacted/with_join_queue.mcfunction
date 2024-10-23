advancement revoke @s only omegaflowey.entity:player_interacted_with_join_queue

execute if score #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag matches 1 run return 0

function omegaflowey.main:telemetry/booth/add_tag { name: "player.interact.join_queue" }
function omegaflowey.entity:player/interacted/with_join_queue/macro with storage omegaflowey:decorative
