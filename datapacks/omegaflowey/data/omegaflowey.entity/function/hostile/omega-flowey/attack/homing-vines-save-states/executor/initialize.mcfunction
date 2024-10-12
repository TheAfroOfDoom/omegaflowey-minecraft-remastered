function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/executor/initialize

# store executor UUID so save-state entities and players can reference it directly
function gu:generate
data modify storage attack:homing-vines-save-states executor_uuid set from storage gu:main out

scoreboard players set #homing-vines-save-states.did_player_take_damage omegaflowey.attack.flag 0
