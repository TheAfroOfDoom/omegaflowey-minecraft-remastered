### Sets up objectives, fake players, entities, and teams required for the map to run.

## Add teams
team add player
team modify player color blue
team modify player friendlyFire false
team modify player seeFriendlyInvisibles false

function omega-flowey:setup/objectives

function entity:setup

# Reset next group ID if there are no `groupable` entities
execute unless entity @e[tag=groupable] run scoreboard players set #group.id.next group.id 0

function utils:log { text_component: '[{"color": "aqua", "text": "Datapack initialized"}]'}
