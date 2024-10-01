### Sets up objectives, fake players, entities, and teams required for the map to run.

# don't run setup if there are no players on, as this duplicates entities due to them
# not being loaded
execute unless entity @a run return 0

function omega-flowey:setup/objectives
function omega-flowey:setup/const

function entity:setup

function omega-flowey:summit/room/setup

function utils:log { text_component: '[ { "text": "Datapack initialized", "color": "aqua" } ]'}
