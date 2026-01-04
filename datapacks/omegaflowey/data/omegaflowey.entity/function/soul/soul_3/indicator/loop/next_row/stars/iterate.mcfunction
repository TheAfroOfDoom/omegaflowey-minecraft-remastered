scoreboard players set #omegaflowey.soul.2.star_pos_retry_idx omegaflowey.soul.flag -1
scoreboard players add #omegaflowey.soul.2.star_idx omegaflowey.soul.flag 1

# summon a bullet in the current row
function omegaflowey.entity:soul/soul_2/indicator/loop/next_row/stars/check_near_other_stars

scoreboard players remove @s omegaflowey.soul.indicator.bullets.remaining 1

# if we have no more bullets to summon, stop iterating
execute if score @s omegaflowey.soul.indicator.bullets.remaining matches ..0 run return 0

# else iterate again
function omegaflowey.entity:soul/soul_2/indicator/loop/next_row/stars/iterate
