scoreboard players add @s omegaflowey.attack.clock.i 1

# this is a rect volume, size is 18x(28+36)x18
# y-bound is -28 to +36
data merge storage omegaflowey:utils.damage { damage: 2, radius: 1.8, source: 'bomb.bullet' }
execute positioned ~ ~-4 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
execute positioned ~ ~-2 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
execute positioned ~ ~ ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
execute positioned ~ ~2 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage

# Move down slowly during summon animation
execute if score @s omegaflowey.attack.clock.i matches 0..15 run teleport @s ~ ~-0.5 ~

# Play falling sound once when we start falling faster
execute if score @s omegaflowey.attack.clock.i matches 20 run function omegaflowey.entity:hostile/omega-flowey/attack/bomb/bullet/loop/start_falling

# Move down faster during actual fall after a delay
execute if score @s omegaflowey.attack.clock.i matches 20.. run teleport @s ~ ~-2.2 ~

# Check if below the floor
scoreboard players set @s omegaflowey.math.0 0
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/position { \
  command: "execute positioned ~100.0 ~-4.0 ~87.5 if entity @s[dx=-200,dy=-20,dz=-200] run \
    scoreboard players set @s omegaflowey.math.0 1\
  " \
}

# Stop falling after bomb falls through floor
execute if score @s omegaflowey.math.0 matches 1 run function omegaflowey.entity:hostile/omega-flowey/attack/bomb/bullet/loop/stop_falling

# TODO(68): validate/determine a value for how long until the bomb bullets terminate
# Terminate after X seconds
execute if score @s omegaflowey.attack.clock.i matches 39.. run function omegaflowey.entity:hostile/omega-flowey/attack/bomb/bullet/terminate
