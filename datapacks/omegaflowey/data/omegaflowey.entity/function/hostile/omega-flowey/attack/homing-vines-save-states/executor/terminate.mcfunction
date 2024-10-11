execute as @e[tag=boss_fight] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/terminate/boss_fight

# player-markers may linger if a player takes damage before the executor load-states,
# so explicitly remove them here
execute as @e[tag=player-marker,tag=homing-vines-save-states] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/player/marker/terminate

scoreboard players reset #homing-vines-save-states.did_player_take_damage attack.flag

kill @s
