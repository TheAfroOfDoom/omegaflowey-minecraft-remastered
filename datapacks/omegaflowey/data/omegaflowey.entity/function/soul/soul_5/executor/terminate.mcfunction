$execute as $(boss_fight_uuid) run function omegaflowey.entity:soul/soul_5/executor/terminate/as_boss_fight

# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  x=-186, dx=91, y=10, dy=95, z=12, dz=95, \
  tag=soul_5, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:soul/soul_5/executor/terminate/as_root

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'function omegaflowey.entity:soul/soul_5/executor/terminate/as_player' \
}
$effect clear $(active_player_uuid) minecraft:resistance

kill @s
