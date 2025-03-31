# Save root player UUID to NBT
data modify entity @s data.root_player_uuid set from storage gu:main out

data modify entity @s CustomName set value '"X-Bullets-Upper-Save-States Player Marker"'

# Copy rotations from player
teleport @s ~ ~ ~ ~ ~

# Add tags
tag @s add should-keep-original-entity
tag @s add should-save-state

tag @s add omega-flowey-remastered
tag @s add hostile
tag @s add omega-flowey
tag @s add attack
tag @s add player-marker
tag @s add x-bullets-upper-save-states
