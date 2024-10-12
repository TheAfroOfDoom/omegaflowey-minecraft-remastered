# function omegaflowey.entity:player/rejoin/check
function omegaflowey.entity:player/death/check

execute if entity @s[tag=omegaflowey.player.in_queue.prompted] run \
  function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/check

# Handle undoing a previous screen shake if necessary
execute unless entity @s[scores={omegaflowey.player.shake.pitch=0,omegaflowey.player.shake.yaw=0}] run function omegaflowey.entity:player/shake_screen

function omegaflowey.entity:player/room
