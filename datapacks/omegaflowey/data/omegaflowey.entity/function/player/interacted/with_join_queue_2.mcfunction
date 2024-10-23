advancement revoke @s only omegaflowey.entity:player_interacted_with_join_queue_2

execute if score #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag matches 1 run return 0

function omegaflowey.main:telemetry/booth/add_tag { name: "player.interact.join_queue_2" }
function omegaflowey.entity:player/interacted/with_join_queue_2/macro with storage omegaflowey:decorative
