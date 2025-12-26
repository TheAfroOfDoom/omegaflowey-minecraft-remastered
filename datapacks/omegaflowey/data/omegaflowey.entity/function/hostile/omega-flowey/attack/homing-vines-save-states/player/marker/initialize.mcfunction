# Save root player UUID to NBT
data modify entity @s data.root_player_uuid set from storage gu:main out

# Copy rotations from player
rotate @s ~ ~

data modify entity @s CustomName set value '"Homing-Vines-Save-States Player Marker"'

# Add tags
function omegaflowey.entity:hostile/omega-flowey/attack/shared/initialize
tag @s add player-marker
tag @s add homing-vines-save-states
tag @s add should-keep-original-entity
tag @s add should-save-state
