data modify entity @s CustomName set value '"Omega-Flowey Boss-fight Director"'

# Add tags
tag @s add omega-flowey-remastered
tag @s add directorial
tag @s add boss_fight

# Store boss fight UUID to storage for later use
function gu:generate
data modify storage omegaflowey:bossfight boss_fight_uuid set from storage gu:main out
data modify storage utils:damage boss_fight_uuid set from storage gu:main out
