# if player is not online (cant be found), skip them
$execute unless entity $(player_uuid) run function entity:directorial/boss_fight/summit/player/queue/skip_player_and_prompt_next
$execute unless entity $(player_uuid) run return 0

# else, show a message to player with [Confirm]/[Deny] buttons
$execute as $(player_uuid) run function entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt
