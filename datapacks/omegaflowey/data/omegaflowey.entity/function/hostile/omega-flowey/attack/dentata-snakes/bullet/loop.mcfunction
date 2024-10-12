scoreboard players add @s omegaflowey.attack.clock.i 1

execute store result storage omegaflowey:utils.damage radius float 0.0001 run scoreboard players get @s omegaflowey.attack.bullets.radius
data merge storage omegaflowey:utils.damage { damage: 3 }
function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage

# Check if inside arena
scoreboard players set @s omegaflowey.math.0 0
function omegaflowey.entity:directorial/boss_fight/summit/origin/at/position { \
  command: "execute positioned ~12.5 ~-17.0 ~-11.0 if entity @s[dx=-25,dy=40,dz=-19] run \
    scoreboard players set @s omegaflowey.math.0 1\
  " \
}

# Bounce if hit edge of arena
execute if score @s omegaflowey.math.0 matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/bullet/loop/maybe_bounce

# Move forward at defined `omegaflowey.attack.speed.z` velocity
execute store result storage omegaflowey:utils.move z float 0.01 run scoreboard players get @s omegaflowey.attack.speed.z
function omegaflowey.entity:utils/move_forward with storage omegaflowey:utils.move

# TODO(42): validate/determine a value for how long the dentata-snakes can bounce
# Allow bullet to escape arena after X seconds
execute if score @s omegaflowey.attack.clock.i matches 100 run tag @s add can-escape-arena

# TODO(42): validate/determine a value for how long until the dentata-snakes terminate
# Terminate after X seconds
execute if score @s omegaflowey.attack.clock.i matches 200.. run function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/bullet/terminate
