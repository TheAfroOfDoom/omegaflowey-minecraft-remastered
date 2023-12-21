# @batch omega-flowey:setup

## should wipe any preexisting scores

scoreboard objectives add some.objective dummy
scoreboard players set #omega-flowey:reset math.0 1
scoreboard players set #omega-flowey:reset some.objective -124
assert score #omega-flowey:reset math.0 matches 1
assert score #omega-flowey:reset some.objective matches -124
function omega-flowey:reset

execute store success score #omega-flowey:reset math.1 run scoreboard players get #omega-flowey:reset math.0
assert score #omega-flowey:reset math.1 matches 0

execute store success score #omega-flowey:reset math.1 run scoreboard players get #omega-flowey:reset some.objective
assert score #omega-flowey:reset math.1 matches 0
