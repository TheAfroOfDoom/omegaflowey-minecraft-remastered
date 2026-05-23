$teleport @s ^ ^$(bullet_velocity_y) ^$(bullet_velocity_z)

# if this has moved too far down, move back up to some minimum Y value
# and disable the move function
# NOTE: this value is -3.3 Y blocks from y-origin
execute at @s store result score @s omegaflowey.soul.bullet.position.y run data get entity @s Pos[1] 100
execute if score @s omegaflowey.soul.bullet.position.y matches ..-30 run \
  teleport @s ~ -0.3 ~
execute if score @s omegaflowey.soul.bullet.position.y matches ..-30 run \
  tag @s add stop_falling
