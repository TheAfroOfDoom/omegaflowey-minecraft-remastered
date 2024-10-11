function entity:player/rejoin/check
function entity:player/death/check

execute if entity @s[tag=omegaflowey.player.in_queue.prompted] run \
  function entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/check

# Handle undoing a previous screen shake if necessary
execute unless entity @s[scores={player.shake.pitch=0,player.shake.yaw=0}] run function entity:player/shake_screen

function entity:player/room
