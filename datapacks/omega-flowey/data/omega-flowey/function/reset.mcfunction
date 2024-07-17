function entity:reset

# Completely wipe the scoreboard of all players
scoreboard players reset *

# Reset next group ID if there are no `groupable` entities
execute unless entity @e[tag=groupable] run scoreboard players set #group.id.next group.id 0
