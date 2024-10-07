# NOTE: TAG_SUMMIT_HARDCODED
# Player location after boss-fight ends
execute as @a[tag=omegaflowey.player.fighting_flowey] run function entity:directorial/boss_fight/summit/phase/soul/terminate/final/player

$execute as $(bossfight_tvscreen_uuid) run function animated_java:tv_screen/remove/this

# end boss fight
kill @s

function omega-flowey:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight
# prompt next player in queue
function entity:directorial/boss_fight/summit/player/queue/check_should_prompt
