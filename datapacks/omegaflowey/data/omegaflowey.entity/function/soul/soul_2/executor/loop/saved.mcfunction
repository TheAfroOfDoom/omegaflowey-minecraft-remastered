scoreboard players operation @s math.0 = @s soul.clock.i
scoreboard players operation @s math.0 -= @s soul.clock.touched_act_button

# math.0 = how many ticks after the player grabbed the ACT button
execute if score @s math.0 matches 120 run function entity:soul/soul_2/executor/initialize/before_saved with storage soul:soul_2
execute if score @s math.0 matches 153 run function entity:soul/soul_2/executor/initialize/saved with storage soul:soul_2
execute if score @s math.0 matches 253.. run function entity:soul/soul_2/executor/terminate
