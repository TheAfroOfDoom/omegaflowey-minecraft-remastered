function omegaflowey.entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal

# flip x
scoreboard players operation @s omegaflowey.attack.position.x *= #omegaflowey.const.-1 omegaflowey.math.const

# flip yaw
scoreboard players operation @s omegaflowey.attack.indicator.yaw *= #omegaflowey.const.-1 omegaflowey.math.const
