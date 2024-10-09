function entity:directorial/boss_fight/shared/stop/as_spectator

# NOTE: TAG_SUMMIT_HARDCODED
# Teleport player to finish position unless stop reason is that:
# - (3) they have left the arena bounds
# - (4) they have died
execute \
  unless score #omegaflowey.bossfight.stop_reason global.flag matches 3 \
  unless score #omegaflowey.bossfight.stop_reason global.flag matches 4 \
  run teleport @s -141.5 43.0 25.5 -45 0

function entity:directorial/boss_fight/shared/stop/as_active_player/modify_health_and_tags

function entity:directorial/boss_fight/shared/stop/as_active_player/log_reason
