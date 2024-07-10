function entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize

scoreboard players operation @s attack.indicator.total = #attack-x-bullets-upper-save-states attack.indicator.total

scoreboard players operation @s attack.indicator.remaining = @s attack.indicator.total

# store executor UUID so save-state entities and players can reference it directly
function gu:generate
data modify storage attack:x-bullets-upper-save-states executor_uuid set from storage gu:main out

scoreboard players set #x-bullets-upper-save-states.did_player_take_damage attack.flag 0
