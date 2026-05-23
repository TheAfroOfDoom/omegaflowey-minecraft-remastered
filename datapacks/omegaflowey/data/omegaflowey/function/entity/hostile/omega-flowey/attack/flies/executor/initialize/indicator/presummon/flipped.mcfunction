function omegaflowey:entity/hostile/omega-flowey/attack/flies/executor/initialize/indicator/presummon/normal

# flip z
scoreboard players operation @s omegaflowey.attack.position.z -= #omegaflowey.bossfight.summit.origin.z omegaflowey.global.flag
scoreboard players operation @s omegaflowey.attack.position.z *= #omegaflowey.const.-1 omegaflowey.math.const
scoreboard players operation @s omegaflowey.attack.position.z += #omegaflowey.bossfight.summit.origin.z omegaflowey.global.flag

# flip yaw
scoreboard players set @s omegaflowey.attack.indicator.yaw 4920
