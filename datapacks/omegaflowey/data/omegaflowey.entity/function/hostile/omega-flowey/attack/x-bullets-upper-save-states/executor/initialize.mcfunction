function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize \
  with storage omegaflowey:bossfight

scoreboard players operation @s omegaflowey.attack.executor.clock.length = #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.executor.clock.length
scoreboard players operation @s omegaflowey.attack.indicator.total = #omegaflowey.attack.x-bullets-upper-save-states omegaflowey.attack.indicator.total

scoreboard players operation @s omegaflowey.attack.indicator.remaining = @s omegaflowey.attack.indicator.total

# store executor UUID so save-state entities and players can reference it directly
function gu:generate
data modify storage omegaflowey:attack.x-bullets-upper-save-states executor_uuid set from storage gu:main out

scoreboard players set #omegaflowey.attack.x-bullets-upper-save-states.did_player_take_damage omegaflowey.attack.flag 0

data modify entity @s CustomName set value '"X-Bullets-Upper-Save-States Executor"'

tag @s remove x-bullets-upper
tag @s add x-bullets-upper-save-states
tag @s add should-save-state
