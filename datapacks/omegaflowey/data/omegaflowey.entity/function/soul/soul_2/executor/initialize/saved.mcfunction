# Update state flag
scoreboard players set #omegaflowey.soul.2.saved omegaflowey.soul.flag 1

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'execute at @s run function omegaflowey.entity:soul/soul_2/executor/initialize/saved/as_player' \
}

# Flash each player/spectator's screen
$execute as $(active_player_uuid) at @s anchored eyes run particle minecraft:flash{color:[1,1,1,1]} ^ ^ ^0.5

# Initialize other soul event models
$execute as $(act_button_uuid) run function omegaflowey.entity:soul/soul_2/act_button/terminate
# $execute as $(indicator_uuid) at @s run function omegaflowey.entity:soul/soul_2/indicator/initialize/saved
$execute as $(soul_model_uuid) run function animated_java:omegaflowey_soul/variants/3/apply
function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved with storage omegaflowey:bossfight

# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  tag=soul_2, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:soul/soul_2/executor/initialize/saved/as_root
