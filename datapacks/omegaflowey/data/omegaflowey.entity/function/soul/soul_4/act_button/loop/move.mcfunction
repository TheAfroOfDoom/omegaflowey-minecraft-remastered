execute store result storage omegaflowey:soul.4 bullet_velocity_y float 0.01 run \
  scoreboard players get @s omegaflowey.soul.velocity.y
execute store result storage omegaflowey:soul.4 bullet_velocity_z float 0.01 run \
  scoreboard players get @s omegaflowey.soul.velocity.z

function omegaflowey.entity:soul/soul_4/act_button/loop/move/macro with storage omegaflowey:soul.4

# apply gravity to Y velocity
scoreboard players remove @s omegaflowey.soul.velocity.y 7

# cap min Y velocity
execute store result storage omegaflowey:utils.math.min a int 1 run scoreboard players get @s omegaflowey.soul.velocity.y
data modify storage omegaflowey:utils.math.min b set value -50
