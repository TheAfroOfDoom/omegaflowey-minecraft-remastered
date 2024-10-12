# player leaving the server is kept in a score: omegaflowey.player.leave.current
# this score is incremented every time they leave (and we detect it on **rejoin**)

# if `omegaflowey.player.leave.current` === `omegaflowey.player.leave.previous`, the player has not left the server since the last time we saw them
execute if score @s omegaflowey.player.leave.current = @s omegaflowey.player.leave.previous run return 0

# otherwise they left the server and we should handle that accordingly
scoreboard players operation @s omegaflowey.player.leave.previous = @s omegaflowey.player.leave.current
function omegaflowey.entity:player/rejoin/check/success
