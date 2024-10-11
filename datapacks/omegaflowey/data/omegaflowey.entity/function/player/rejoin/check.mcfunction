# player leaving the server is kept in a score: player.leave.current
# this score is incremented every time they leave (and we detect it on **rejoin**)

# if `player.leave.current` === `player.leave.previous`, the player has not left the server since the last time we saw them
execute if score @s player.leave.current = @s player.leave.previous run return 0

scoreboard players operation @s player.leave.previous = @s player.leave.current

# otherwise they left the server and we should handle that accordingly
execute if entity @s[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:directorial/boss_fight/summit/player/active/leave_and_rejoin
execute if entity @s[tag=omegaflowey.player.in_queue] run function omegaflowey.entity:directorial/boss_fight/summit/player/queue/leave_and_rejoin
