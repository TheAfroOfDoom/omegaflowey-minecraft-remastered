execute as @e[tag=boss_fight] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/terminate/boss_fight

# player-markers may linger if a player takes damage before the executor load-states,
# so explicitly remove them here
execute as @e[tag=player-marker] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/player/marker/terminate

scoreboard players reset #x-bullets-upper-save-states.did_player_take_damage attack.flag

kill @s
