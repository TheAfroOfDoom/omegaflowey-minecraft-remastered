execute as @e[tag=boss_fight] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/terminate/boss_fight

scoreboard players reset #homing-vine-save-states.did_player_take_damage attack.flag

kill @s
