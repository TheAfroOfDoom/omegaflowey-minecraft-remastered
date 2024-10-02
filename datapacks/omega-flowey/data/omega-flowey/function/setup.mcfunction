### Sets up objectives, fake players, entities, and teams required for the map to run.

function omega-flowey:setup/objectives
function omega-flowey:setup/const

function entity:setup

# don't run room setup if there are no players on, as this duplicates entities due to them
# not being loaded
execute if entity @a run function omega-flowey:summit/room/setup

function utils:log { text_component: '[ { "text": "Datapack initialized", "color": "aqua" } ]'}
