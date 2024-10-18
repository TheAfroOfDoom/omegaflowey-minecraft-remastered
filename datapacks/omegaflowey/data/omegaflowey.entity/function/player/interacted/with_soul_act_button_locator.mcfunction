advancement revoke @s only omegaflowey.entity:player_interacted_with_soul_act_button_locator

# only do stuff for the active bossfight player
execute unless entity @s[tag=omegaflowey.player.fighting_flowey] run return 0

function omegaflowey.entity:soul/soul_5/act_button/locator/player_interacted_with with storage omegaflowey:bossfight
