function omegaflowey.entity:remove_animated_java_models/boss_fight
# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
execute as @e[ \
  x=-186, dx=61, y=12, dy=44, z=47, dz=60, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:directorial/boss_fight/shared/stop/as_root

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'execute unless entity @s[tag=omegaflowey.player.fighting_flowey] run \
    function omegaflowey.entity:directorial/boss_fight/shared/stop/as_spectator' \
}
$execute as $(active_player_uuid) run function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player

data modify storage omegaflowey:bossfight active_player_uuid set value "0"
function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight
# prompt next player in queue
function omegaflowey.entity:directorial/boss_fight/summit/player/queue/check_should_prompt
