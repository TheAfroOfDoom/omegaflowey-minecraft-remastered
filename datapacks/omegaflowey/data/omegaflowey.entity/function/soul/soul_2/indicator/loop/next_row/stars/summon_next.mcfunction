# save current z pos to relevant score
function omegaflowey.entity:soul/soul_2/indicator/loop/next_row/stars/summon_next/track

# center coordinate (z += 0.5)
scoreboard players operation \
  #omegaflowey.soul.2.next_star_z_pos omegaflowey.soul.flag *= #omegaflowey.const.100 omegaflowey.math.const
scoreboard players add #omegaflowey.soul.2.next_star_z_pos omegaflowey.soul.flag 50

execute store result storage omegaflowey:soul.2 next_bullet_z float 0.01 run \
  scoreboard players get #omegaflowey.soul.2.next_star_z_pos omegaflowey.soul.flag

function omegaflowey.entity:soul/soul_2/star/summon with storage omegaflowey:soul.2
