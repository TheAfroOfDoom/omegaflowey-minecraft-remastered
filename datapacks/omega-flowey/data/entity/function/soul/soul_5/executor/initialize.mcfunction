# Set scores
scoreboard players set @s soul.clock.i -1

scoreboard players operation @s soul.executor.clock.length = #soul-5 soul.executor.clock.length

scoreboard players reset @s soul.clock.touched_act_button
scoreboard players set #soul_5.saved soul.flag 0
scoreboard players set #soul_5.touched soul.flag 0

# Remove tags
tag @s remove soul-executor-new

# Play music
function entity:soul/soul_5/executor/play_music
