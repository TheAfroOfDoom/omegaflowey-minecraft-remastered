### Sets up objectives, fake players, entities, and teams required for the map to run.

function omegaflowey:main/setup/objectives
function omegaflowey:main/setup/const
# function omegaflowey:main/setup/gamerules

scoreboard players set #omegaflowey.telemetry.enabled omegaflowey.global.flag 1
function omegaflowey:main/telemetry/setup
function omegaflowey:entity/setup

# don't run room setup if there are no players on, as this duplicates entities due to them
# not being loaded
execute if entity @a[limit=1] run function omegaflowey:main/summit-2026/room/setup

function omegaflowey:utils/log { text_component: [ { "text": "Datapack initialized", "color": "aqua" } ] }
