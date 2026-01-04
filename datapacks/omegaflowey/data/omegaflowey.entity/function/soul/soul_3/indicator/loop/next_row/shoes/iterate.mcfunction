# math.0 = current z coord

# summon a bullet at current position
function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/shoes/presummon

scoreboard players operation @s omegaflowey.math.0 += @s omegaflowey.soul.bullet.position.dz
scoreboard players remove @s omegaflowey.soul.indicator.bullets.remaining 1

# if we have no more bullets to summon, stop iterating
execute if score @s omegaflowey.soul.indicator.bullets.remaining matches ..0 run return 0

# else iterate again
function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/shoes/iterate
