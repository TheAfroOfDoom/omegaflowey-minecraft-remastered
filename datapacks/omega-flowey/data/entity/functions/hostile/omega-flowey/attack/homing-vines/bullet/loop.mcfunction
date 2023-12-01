scoreboard players add @s attack.clock.i 1

# TODO: this hitbox is inaccurate -- needs to be a bounding box that is NOT axis aligned
data merge storage utils:damage { damage: 2, radius: 1 }
function entity:utils/damage with storage utils:damage

# Move while inside arena
execute if entity @s[x=-25,dx=50,y=30,dy=10,z=-5,dz=23] run function entity:hostile/omega-flowey/attack/homing-vines/bullet/loop/move

# TODO: validate/determine a value for how long until the homing-vines bullets terminate
# Terminate after X seconds
execute if score @s attack.clock.i matches 40.. run function entity:hostile/omega-flowey/attack/homing-vines/bullet/terminate
