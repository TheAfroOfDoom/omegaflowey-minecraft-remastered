# Assume the active player does not exist
scoreboard players set #omegaflowey.bossfight.stop_reason global.flag 1

# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
$execute as $(active_player_uuid) run function entity:directorial/boss_fight/shared/loop/check_active_player_still_exists/as_active_player
