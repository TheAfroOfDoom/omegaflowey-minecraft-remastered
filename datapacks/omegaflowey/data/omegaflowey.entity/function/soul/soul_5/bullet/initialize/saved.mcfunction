# Summon flower at current position
execute store result storage soul:soul_5.bullet x float 0.01 run scoreboard players get @s omegaflowey.soul.bullet.position.x
execute store result storage soul:soul_5.bullet z float 0.01 run scoreboard players get @s omegaflowey.soul.bullet.position.z
function omegaflowey.entity:soul/soul_5/bullet/initialize/saved/before_summon_flower with storage soul:soul_5.bullet

# Terminate
function omegaflowey.entity:soul/soul_5/bullet/terminate
