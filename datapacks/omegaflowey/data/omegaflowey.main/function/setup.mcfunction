### Sets up objectives, fake players, entities, and teams required for the map to run.

function omegaflowey.main:setup/objectives
function omegaflowey.main:setup/const
function omegaflowey.main:setup/gamerules

# function omegaflowey.main:telemetry/setup
scoreboard players set #omegaflowey.telemetry.enabled omegaflowey.global.flag 0
function omegaflowey.entity:setup

function omegaflowey.utils:log { text_component: [ { "text": "Datapack initialized", "color": "aqua" } ] }
