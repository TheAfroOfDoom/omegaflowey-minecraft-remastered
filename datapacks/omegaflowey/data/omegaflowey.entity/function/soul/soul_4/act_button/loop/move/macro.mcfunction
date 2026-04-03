$teleport @s ^ ^$(bullet_velocity_y) ^$(bullet_velocity_z)

# if this has moved too far down, move back up to some minimum Y value
# and disable the move function
execute at @s store result score @s omegaflowey.soul.bullet.position.y run data get entity @s Pos[1] 100
execute if score @s omegaflowey.soul.bullet.position.y matches ..3370 run \
  teleport @s ~ 33.7 ~
execute if score @s omegaflowey.soul.bullet.position.y matches ..3370 run \
  tag @s add stop_falling
