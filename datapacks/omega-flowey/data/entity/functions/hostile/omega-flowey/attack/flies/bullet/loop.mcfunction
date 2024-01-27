scoreboard players add @s attack.clock.i 1

data merge storage utils:damage { damage: 2, radius: 1 }
execute positioned ~ ~ ~ run function entity:utils/damage with storage utils:damage

# Move forward
function entity:hostile/omega-flowey/attack/flies/bullet/loop/move

# TODO: validate/determine a value for how long until the flies bullets terminate
# Terminate after X seconds
execute if score @s attack.clock.i matches 60.. run function entity:hostile/omega-flowey/attack/flies/bullet/terminate
