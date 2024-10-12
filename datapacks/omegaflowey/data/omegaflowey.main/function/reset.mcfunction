function omegaflowey.entity:reset

# Reset next group ID if there are no `groupable` entities
execute unless entity @e[tag=groupable] run scoreboard players set #omegaflowey.group.id.next omegaflowey.group.id 0
