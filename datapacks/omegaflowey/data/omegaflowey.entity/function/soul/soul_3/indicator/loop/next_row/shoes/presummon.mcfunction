execute store result storage omegaflowey:soul.2 next_bullet_x float 0.01 run \
  scoreboard players get @s omegaflowey.soul.bullet.position.x
execute store result storage omegaflowey:soul.2 next_bullet_z float 0.01 run \
  scoreboard players get @s omegaflowey.math.0

scoreboard players add @s omegaflowey.soul.indicator.bullets.cumulative-total 1

execute if score @s omegaflowey.soul.indicator.bullets.cumulative-total matches 41 run \
  function omegaflowey.entity:soul/soul_2/act_button/summon with storage omegaflowey:soul.2
execute unless score @s omegaflowey.soul.indicator.bullets.cumulative-total matches 41 run \
  function omegaflowey.entity:soul/soul_2/bullet/summon with storage omegaflowey:soul.2
