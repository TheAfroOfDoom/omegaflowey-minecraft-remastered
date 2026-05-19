# Update state flag
scoreboard players set #omegaflowey.soul.3.saved omegaflowey.soul.flag 1

function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: \
  'execute at @s run function omegaflowey:entity/soul/soul_3/executor/initialize/saved/as_player' \
}

# Flash each player/spectator's screen
$execute as $(active_player_uuid) at @s anchored eyes run particle minecraft:flash{color:[1,1,1,1]} ^ ^ ^0.5

# Initialize other soul event models
$execute as $(act_button_uuid) run function omegaflowey:entity/soul/soul_3/act_button/terminate
$execute as $(soul_model_uuid) run function aj:omegaflowey_soul/variants/3/apply
function omegaflowey:entity/directorial/boss_fight/shared/phase/soul/loop/saved with storage omegaflowey:bossfight

# NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  x=25, dx=96, y=-10, dy=171, z=-47, dz=73, \
  tag=soul_3, \
  tag=omega-flowey-remastered \
] run function omegaflowey:entity/soul/soul_3/executor/initialize/saved/as_root
