scoreboard players set #omegaflowey.soul.1.saved omegaflowey.soul.flag 1

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'execute at @s run function omegaflowey.entity:soul/soul_1/executor/initialize/saved/as_player' \
}

# Flash each player's screen
$execute as $(active_player_uuid) at @s anchored eyes run particle minecraft:flash{color:[1,1,1,1]} ^ ^ ^0.5

# Initialize other soul event models
$execute as $(act_button_uuid) run function omegaflowey.entity:soul/soul_1/act_button/terminate
$execute as $(soul_model_uuid) run function animated_java:omegaflowey_soul/variants/2/apply
function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved with storage omegaflowey:bossfight

# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
# x=-186, dx=91, y=10, dy=95, z=12, dz=95,
execute as @e[ \
  tag=soul_1, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:soul/soul_1/executor/initialize/saved/as_root
