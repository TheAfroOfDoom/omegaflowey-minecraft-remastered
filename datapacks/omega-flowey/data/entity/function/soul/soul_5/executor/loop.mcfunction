# Loop logic for players
execute as @a[team=player] run function entity:soul/soul_5/executor/loop/as_player

scoreboard players add @s soul.clock.i 1

# Ignore logic while `soul.clock.i` is negative
execute if score @s soul.clock.i matches ..-1 run return 0

# Summon the gun when `soul.clock.i == 0`
execute if score @s soul.clock.i matches 0 run function entity:soul/soul_5/indicator/summon

# Replay song after it ends (only if we haven't yet started `saved` state)
execute if score #soul_5.saved soul.flag matches 0 if score @s soul.clock.i matches 303 run function entity:soul/soul_5/executor/play_music

# Run new logic if the player grabs the act_button
execute if score #soul_5.touched soul.flag matches 1 run function entity:soul/soul_5/executor/loop/saved
execute if score #soul_5.touched soul.flag matches 1 run return 0

# Terminate
execute if score @s soul.clock.i >= @s soul.executor.clock.length run function entity:soul/soul_5/executor/terminate
