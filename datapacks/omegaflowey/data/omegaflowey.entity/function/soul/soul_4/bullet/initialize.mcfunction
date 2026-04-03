function omegaflowey.entity:soul/shared/bullet/initialize
tag @s add soul_4
data merge entity @s { CustomName: "'Soul 4 Bullet'" }

execute store result score @s omegaflowey.soul.velocity.y run \
  data get storage omegaflowey:soul.4 bullet_velocity_y 100
execute store result score @s omegaflowey.soul.velocity.z run \
  data get storage omegaflowey:soul.4 bullet_velocity_z 100
