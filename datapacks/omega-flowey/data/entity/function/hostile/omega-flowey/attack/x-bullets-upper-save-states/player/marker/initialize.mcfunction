# Save root player UUID to NBT
data modify entity @s data.root_player_uuid set from storage gu:main out

# Copy rotations from player
teleport @s ~ ~ ~ ~ ~

# Add tags
tag @s add should-keep-original-entity
tag @s add should-save-state

# Remove tags
tag @s remove player-marker-new
