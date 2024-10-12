scoreboard players add @s omegaflowey.attack.clock.i 1

data merge storage omegaflowey:utils.damage { damage: 2, radius: 1 }
execute positioned ~ ~-1.5 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage

# Move forward
function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/bullet/loop/move

# TODO(60): validate/determine a value for how long until the finger-guns bullets terminate
# Terminate after X seconds
execute if score @s omegaflowey.attack.clock.i matches 60.. run function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/bullet/terminate
