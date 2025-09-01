teleport @s ~ ~-0.2 ~

# Check if done falling (hit/below the floor)
scoreboard players set @s omegaflowey.math.0 0
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/position { \
  command: "execute positioned ~100.0 ~-5.0 ~87.5 if entity @s[dx=-200,dy=-20,dz=-200] run \
    scoreboard players set @s omegaflowey.math.0 1\
  " \
}

execute if score @s omegaflowey.math.0 matches 1 run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/bullet/loop/stop_falling
