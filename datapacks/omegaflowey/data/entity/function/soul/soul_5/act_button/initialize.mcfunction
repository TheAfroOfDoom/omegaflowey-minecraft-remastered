# Set scores
scoreboard players set @s soul.clock.i -1

# Add tags
tag @s add soul_5

# Remove tags
tag @s remove act-button-new

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage soul:soul_5 act_button_uuid set from storage gu:main out

# Update tags on locator children
function animated_java:act_button/as_own_locator_entities { command: 'function entity:soul/soul_5/act_button/initialize/locator' }
