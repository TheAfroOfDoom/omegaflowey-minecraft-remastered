data modify entity @s CustomName set value '"Omega-Flowey Boss-fight Director"'

# Add tags
tag @s add omega-flowey-remastered
tag @s add directorial
tag @s add boss_fight

# Store boss fight UUID to storage for later use
function gu:generate
data modify storage omegaflowey:bossfight boss_fight_uuid set from storage gu:main out
data modify storage omegaflowey:utils.damage boss_fight_uuid set from storage gu:main out

# Store active player uuid to `utils:damage`
data modify storage omegaflowey:utils.damage active_player_uuid set from storage omegaflowey:bossfight active_player_uuid
