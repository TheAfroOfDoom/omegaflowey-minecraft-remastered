# @batch omega-flowey:setup

## should wipe any preexisting scores

function omega-flowey:reset

# create an entity with a group id
summon minecraft:marker ~ ~ ~ {Tags:["omega-flowey","groupable","test.setup.should-reset-group-ids"]}

assert score #group.id.next group.id matches 0
execute as @e[tag=test.setup.should-reset-group-ids] run function entity:group/set
assert score #group.id.next group.id matches 1

# killing `groupable` entities should not immediately reset #group.id.next
kill @e[tag=test.setup.should-reset-group-ids]
assert score #group.id.next group.id matches 1

function omega-flowey:reset

assert score #group.id.next group.id matches 0
