# store player UUID so position marker entity can reference it directly
function gu:generate
data modify storage omegaflowey:attack.homing-vines-save-states root_player_uuid set from storage gu:main out

# Summon marker entity at current position to teleport to upon loading state
execute summon minecraft:marker run \
  function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/player/marker/initialize
