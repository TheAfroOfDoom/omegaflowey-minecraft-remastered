function omegaflowey.main:telemetry/bossfight/tag/instant { name: "soul.saved" }

# Update state flag
scoreboard players set #omegaflowey.soul.5.saved omegaflowey.soul.flag 1

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'execute at @s run function omegaflowey.entity:soul/soul_5/executor/initialize/saved/as_player' \
}

# Flash each player's screen
$execute as $(active_player_uuid) at @s anchored eyes run particle minecraft:flash ^ ^ ^0.5

# Initialize other soul event models
$execute as $(act_button_uuid) run function omegaflowey.entity:soul/soul_5/act_button/initialize/saved
$execute as $(indicator_uuid) at @s run function omegaflowey.entity:soul/soul_5/indicator/initialize/saved
$execute as $(soul_model_uuid) run function omegaflowey.entity:soul/soul_5/soul/saved
function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved with storage omegaflowey:bossfight

# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  x=-186, dx=91, y=12, dy=93, z=12, dz=95, \
  tag=soul_5, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:soul/soul_5/executor/initialize/saved/as_root
