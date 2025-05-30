# Check if escaped arena past z-bound towarsd flowey
scoreboard players set @s omegaflowey.math.0 0
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/position { \
  command: "execute positioned ~1000.0 ~-7.0 ~11.0 if entity @s[dx=-2000,dy=10,dz=-1000] run \
    scoreboard players set @s omegaflowey.math.0 1" \
}

# Don't bounce if we've already escaped the arena
execute if score @s omegaflowey.math.0 matches 1 if entity @s[tag=can-escape-arena] run return 0

scoreboard players set @s omegaflowey.math.0 -1250
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
execute store result storage omegaflowey:attack.dentata-snakes.bounce x_negative_x float 0.01 run scoreboard players get @s omegaflowey.math.0
data modify storage omegaflowey:attack.dentata-snakes.bounce x_negative_dx set value 50

scoreboard players set @s omegaflowey.math.0 1250
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.x omegaflowey.global.flag
execute store result storage omegaflowey:attack.dentata-snakes.bounce x_positive_x float 0.01 run scoreboard players get @s omegaflowey.math.0
data modify storage omegaflowey:attack.dentata-snakes.bounce x_positive_dx set value -50

scoreboard players set @s omegaflowey.math.0 1100
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag
execute store result storage omegaflowey:attack.dentata-snakes.bounce z_negative_z float 0.01 run scoreboard players get @s omegaflowey.math.0
data modify storage omegaflowey:attack.dentata-snakes.bounce z_negative_dz set value 25

scoreboard players set @s omegaflowey.math.0 3000
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.z omegaflowey.global.flag
execute store result storage omegaflowey:attack.dentata-snakes.bounce z_positive_z float 0.01 run scoreboard players get @s omegaflowey.math.0
data modify storage omegaflowey:attack.dentata-snakes.bounce z_positive_dz set value -25

scoreboard players set @s omegaflowey.math.0 -700
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.origin.y omegaflowey.global.flag
execute store result storage omegaflowey:attack.dentata-snakes.bounce y float 0.01 run scoreboard players get @s omegaflowey.math.0
data modify storage omegaflowey:attack.dentata-snakes.bounce dy set value 10

data modify storage omegaflowey:attack.dentata-snakes.bounce command_after_bouncing set value '\
  execute if entity @s[tag=attack-bullet-head] at @s run \
    function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/bullet/loop/after_bounce_as_bullet_head\
'

function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/position { \
  command: "function omegaflowey.entity:utils/bounce with storage omegaflowey:attack.dentata-snakes.bounce" \
}
