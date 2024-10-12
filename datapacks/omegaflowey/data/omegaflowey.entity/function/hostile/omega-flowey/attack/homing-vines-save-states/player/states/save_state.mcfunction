# store player UUID so position marker entity can reference it directly
function gu:generate
data modify storage omegaflowey:attack.homing-vines-save-states root_player_uuid set from storage gu:main out

# Summon marker entity at current position to teleport to upon loading state
summon minecraft:marker ~ ~ ~ {CustomName: '"Homing-Vines-Save-States Player Marker"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","player-marker","player-marker-new","homing-vines-save-states"]}
execute as @e[tag=player-marker-new] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/player/marker/initialize
