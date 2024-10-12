# player dying is kept in a score: omegaflowey.player.deaths.current
# this score is incremented every time they die

# if `omegaflowey.player.deaths.current` === `omegaflowey.player.deaths.previous`, the player has not died since the last time we handled it
execute if score @s omegaflowey.player.deaths.current = @s omegaflowey.player.deaths.previous run return 0

scoreboard players operation @s omegaflowey.player.deaths.previous = @s omegaflowey.player.deaths.current

# otherwise they just died and we should handle that accordingly
execute if entity @s[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:directorial/boss_fight/summit/player/active/on_death
