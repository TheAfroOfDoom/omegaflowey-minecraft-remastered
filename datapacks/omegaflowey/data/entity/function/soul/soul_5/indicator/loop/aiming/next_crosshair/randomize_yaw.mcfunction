## try to determine the next crosshair position 10 times before giving up
## and proceeding with sub-optimal placement
# (this is functionally a while-loop)

scoreboard players add @s math.trials 1
execute if score @s math.trials matches 10.. run return 0

execute store result storage soul:soul_5.indicator next_bullet_angle_from_player float 0.01 run random value 0..35999
function entity:soul/soul_5/indicator/loop/aiming/next_crosshair/randomize_yaw/check_valid with storage soul:soul_5.indicator

# invalid position, try again
execute if score @s math.bool matches 0 run function entity:soul/soul_5/indicator/loop/aiming/next_crosshair/randomize_yaw
