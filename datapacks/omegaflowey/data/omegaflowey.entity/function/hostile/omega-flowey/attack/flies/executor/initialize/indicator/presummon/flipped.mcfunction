function omegaflowey.entity:hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal

# flip x
scoreboard players operation @s attack.position.x *= #-1 mathf.const

# flip yaw
scoreboard players operation @s attack.indicator.yaw *= #-1 mathf.const
