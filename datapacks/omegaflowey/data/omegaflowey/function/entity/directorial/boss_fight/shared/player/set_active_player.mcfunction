tag @s add omegaflowey.player.fighting_flowey

function gu:generate
data modify storage omegaflowey:bossfight active_player_uuid set from storage gu:main out
data modify storage omegaflowey:utils.damage active_player_uuid set from storage omegaflowey:bossfight active_player_uuid
