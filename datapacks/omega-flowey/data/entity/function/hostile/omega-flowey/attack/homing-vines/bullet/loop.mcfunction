scoreboard players add @s attack.clock.i 1

# TODO(40): this hitbox is inaccurate -- needs to be a bounding box that is NOT axis aligned
# > make some functions to represent the shape and check if the player's coordinates pass the function checks
# inputs: { rectangle_width, current_position, initial_position (bullet summon position) }
data merge storage utils:damage { damage: 2, radius: 1 }
execute if entity @s[tag=!cant-damage] run function entity:utils/damage with storage utils:damage

# Check if inside arena
scoreboard players set @s math.0 0
function entity:directorial/boss_fight/summit/origin/at/position { \
  command: "execute positioned ~-25.0 ~-5.0 ~-7.5 if entity @s[dx=50,dy=10,dz=-23] run \
    scoreboard players set @s math.0 1\
  " \
}

# Move while inside arena
execute if score @s math.0 matches 1 run function entity:hostile/omega-flowey/attack/homing-vines/bullet/loop/move

# TODO(41): validate/determine a value for how long until the homing-vines bullets terminate
# Terminate after X seconds
execute if score @s attack.clock.i matches 20.. run function entity:hostile/omega-flowey/attack/homing-vines/bullet/terminate
