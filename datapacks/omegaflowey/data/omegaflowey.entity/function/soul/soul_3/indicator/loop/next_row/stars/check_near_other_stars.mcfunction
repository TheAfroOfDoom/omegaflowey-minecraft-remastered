# randomize z-coordinate in range -79..-56
execute store result score #omegaflowey.soul.3.next_star_z_pos omegaflowey.soul.flag run random value -79..-56

scoreboard players set #omegaflowey.soul.3.is_near_other_star omegaflowey.soul.flag 0
scoreboard players add #omegaflowey.soul.3.star_pos_retry_idx omegaflowey.soul.flag 1

execute if score #omegaflowey.soul.3.star_idx omegaflowey.soul.flag matches 1 run \
  function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/stars/check_near_other_stars/1
execute if score #omegaflowey.soul.3.star_idx omegaflowey.soul.flag matches 2 run \
  function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/stars/check_near_other_stars/2
execute if score #omegaflowey.soul.3.star_idx omegaflowey.soul.flag matches 3 run \
  function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/stars/check_near_other_stars/3
execute if score #omegaflowey.soul.3.star_idx omegaflowey.soul.flag matches 4 run \
  function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/stars/check_near_other_stars/4

execute if score #omegaflowey.soul.3.is_near_other_star omegaflowey.soul.flag matches 0 run return run \
  function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/stars/summon_next

# only retry up to 3 times. otherwise, skip this star
execute unless score #omegaflowey.soul.3.star_pos_retry_idx omegaflowey.soul.flag matches 3.. run \
  function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/stars/check_near_other_stars
