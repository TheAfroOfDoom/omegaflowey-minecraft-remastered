function omegaflowey.main:telemetry/data/active_player/bossfight_hit_count
function omegaflowey.main:telemetry/data/active_player/gamemode with storage omegaflowey:bossfight
execute store result storage omegaflowey:telemetry temp.data.s int 1 run \
  scoreboard players get #omegaflowey.bossfight.stop_reason omegaflowey.global.flag
function omegaflowey.main:telemetry/bossfight/tag/end { name: "bossfight.summit" }
function omegaflowey.main:telemetry/bossfight/tag/root/end

schedule clear omegaflowey.entity:directorial/boss_fight/summit/phase/cutscene/terminate/scheduled

function omegaflowey.entity:remove_animated_java_models/boss_fight
execute as @e[tag=omega-flowey-remastered] run function omegaflowey.entity:directorial/boss_fight/shared/stop/as_root

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'execute unless entity @s[tag=omegaflowey.player.fighting_flowey] run \
    function omegaflowey.entity:directorial/boss_fight/shared/stop/as_spectator' \
}
$execute as $(active_player_uuid) at @s run function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player

function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight
# prompt next player in queue
function omegaflowey.entity:directorial/boss_fight/summit/player/queue/check_should_prompt
