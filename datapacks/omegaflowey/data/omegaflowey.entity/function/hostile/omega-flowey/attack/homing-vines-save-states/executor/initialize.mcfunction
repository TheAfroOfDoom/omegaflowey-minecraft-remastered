function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/executor/initialize

data modify entity @s CustomName set value '"Homing-Vines-Save-States Executor"'

tag @s remove homing-vines
tag @s add homing-vines-save-states
tag @s add should-save-state

# store executor UUID so save-state entities and players can reference it directly
function gu:generate
data modify storage omegaflowey:attack.homing-vines-save-states executor_uuid set from storage gu:main out

scoreboard players set #omegaflowey.attack.homing-vines-save-states.did_player_take_damage omegaflowey.attack.flag 0
