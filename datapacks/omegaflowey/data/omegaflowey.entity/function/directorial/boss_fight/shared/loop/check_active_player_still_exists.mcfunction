# Assume the active player does not exist
scoreboard players set #omegaflowey.bossfight.stop_reason omegaflowey.global.flag 1

$execute as $(active_player_uuid) run function omegaflowey.entity:directorial/boss_fight/shared/loop/check_active_player_still_exists/as_active_player
