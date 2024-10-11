# player dying is kept in a score: player.deaths.current
# this score is incremented every time they die

# if `player.deaths.current` === `player.deaths.previous`, the player has not died since the last time we handled it
execute if score @s player.deaths.current = @s player.deaths.previous run return 0

scoreboard players operation @s player.deaths.previous = @s player.deaths.current

# otherwise they just died and we should handle that accordingly
execute if entity @s[tag=omegaflowey.player.fighting_flowey] run function entity:directorial/boss_fight/summit/player/active/on_death
