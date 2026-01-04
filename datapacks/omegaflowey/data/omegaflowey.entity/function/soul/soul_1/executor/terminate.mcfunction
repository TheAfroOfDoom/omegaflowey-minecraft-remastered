function omegaflowey.entity:soul/shared/executor/terminate with storage omegaflowey:bossfight

# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  tag=soul_1, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:soul/soul_1/executor/terminate/as_root

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'stopsound @s record omega-flowey:music.soul.1' \
}

kill @s
