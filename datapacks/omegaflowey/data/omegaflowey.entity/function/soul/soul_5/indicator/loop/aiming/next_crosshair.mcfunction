# randomize yaw (0..2pi) until the next crosshair would no longer summon too close to the indicator
scoreboard players set @s omegaflowey.math.trials -1
function omegaflowey.entity:soul/soul_5/indicator/loop/aiming/next_crosshair/randomize_yaw

# summon hearts instead of crosshairs upon `saved`
# (only different visually; they are the same root `soul_5_crosshair` entity)
data modify storage omegaflowey:soul.5.indicator next_crosshair_variant set value 'default'
execute if score #omegaflowey.soul.5.saved omegaflowey.soul.flag matches 1 run data modify storage omegaflowey:soul.5.indicator next_crosshair_variant set value 'heart'

function omegaflowey.entity:soul/soul_5/crosshair/summon with storage omegaflowey:soul.5.indicator

scoreboard players remove @s omegaflowey.soul.indicator.bullets.remaining 1

# next state if no more crosshairs left to summon
execute if score @s omegaflowey.soul.indicator.bullets.remaining matches ..0 run function omegaflowey.entity:soul/soul_5/indicator/loop/aiming/next_state
