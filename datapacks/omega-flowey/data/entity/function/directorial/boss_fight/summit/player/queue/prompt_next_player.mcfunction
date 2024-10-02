# if player is not online (cant be found), skip them
scoreboard players set @s math.0 0
$execute if entity $(player_uuid) run scoreboard players set @s math.0 1
execute if score @s math.0 matches 0 run function entity:directorial/boss_fight/summit/player/queue/pop \
  with storage omegaflowey:bossfight player_queue

# else, show a message to player with [Confirm]/[Deny] buttons
$execute as $(player_uuid) run function entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt
