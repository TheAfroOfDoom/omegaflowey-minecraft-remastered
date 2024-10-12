function omegaflowey.entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal

# flip x
scoreboard players operation @s omegaflowey.attack.position.x *= #-1 omegaflowey.math.const

# flip yaw
scoreboard players operation @s omegaflowey.attack.indicator.yaw *= #-1 omegaflowey.math.const
