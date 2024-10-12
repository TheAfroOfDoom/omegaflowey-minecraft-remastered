# player leaving the server is kept in a score: omegaflowey.player.leave.current
# this score is incremented every time they leave (and we detect it on **rejoin**)

# if `omegaflowey.player.leave.current` === `omegaflowey.player.leave.previous`, the player has not left the server since the last time we saw them
execute if score @s omegaflowey.player.leave.current = @s omegaflowey.player.leave.previous run return 0

scoreboard players operation @s omegaflowey.player.leave.previous = @s omegaflowey.player.leave.current

# otherwise they left the server and we should handle that accordingly
execute if entity @s[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:directorial/boss_fight/summit/player/active/leave_and_rejoin
execute if entity @s[tag=omegaflowey.player.in_queue] run function omegaflowey.entity:directorial/boss_fight/summit/player/queue/leave_and_rejoin
