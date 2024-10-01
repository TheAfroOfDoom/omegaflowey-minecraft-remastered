# player leaving the server is kept in a score: player.leave.current
# this score is incremented every time they leave (and we detect it on **rejoin**)

# if `player.leave.current` === `player.leave.previous`, the player has not left the server since the last time we saw them
execute if score @s player.leave.current = @s player.leave.previous run return 0

scoreboard players operation @s player.leave.previous = @s player.leave.current
