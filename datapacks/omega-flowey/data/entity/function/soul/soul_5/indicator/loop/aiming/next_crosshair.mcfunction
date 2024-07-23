# randomize yaw (0..2pi) until the next crosshair would no longer summon too close to the indicator
scoreboard players set @s math.trials -1
function entity:soul/soul_5/indicator/loop/aiming/next_crosshair/randomize_yaw

function entity:soul/soul_5/crosshair/summon with storage soul:soul_5.indicator

scoreboard players remove @s soul.indicator.bullets.remaining 1

# next state if no more crosshairs left to summon
execute if score @s soul.indicator.bullets.remaining matches ..0 run function entity:soul/soul_5/indicator/loop/aiming/next_state
