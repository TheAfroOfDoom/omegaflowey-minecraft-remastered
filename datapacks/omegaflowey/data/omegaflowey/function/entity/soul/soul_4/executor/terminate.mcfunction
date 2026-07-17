function omegaflowey:entity/soul/shared/executor/terminate with storage omegaflowey:bossfight

# NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  tag=soul_4, \
  tag=omega-flowey-remastered, \
  predicate=summit.booth:omegaflowey/in_bounding_box/global \
] run \
  function omegaflowey:entity/soul/soul_4/executor/terminate/as_root
# execute as @e[ \
  x=25, dx=96, y=-10, dy=171, z=-47, dz=73, \
  tag=soul_4, \
  tag=omega-flowey-remastered \
] run \
  function omegaflowey:entity/soul/soul_4/executor/terminate/as_root

function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: \
  'stopsound @s record omega-flowey:music.soul.4' \
}

kill @s
