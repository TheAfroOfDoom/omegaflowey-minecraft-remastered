data modify entity @s CustomName set value '"Omega-Flowey Boss-Fight Arena Box"'

# Add tags
tag @s add omega-flowey-remastered
tag @s add directorial
tag @s add arena_box

# Store boss fight UUID to storage for later use
function gu:generate
data modify storage omegaflowey:bossfight arena_box_uuid set from storage gu:main out
