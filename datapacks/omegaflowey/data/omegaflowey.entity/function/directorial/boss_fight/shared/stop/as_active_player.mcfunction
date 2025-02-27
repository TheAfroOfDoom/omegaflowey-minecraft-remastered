function omegaflowey.entity:directorial/boss_fight/shared/stop/as_spectator

# NOTE: TAG_SUMMIT_HARDCODED
# Teleport player to finish position unless stop reason is that:
# - (3) they have left the arena bounds
# - (4) they have died
execute \
  unless score #omegaflowey.bossfight.stop_reason omegaflowey.global.flag matches 3 \
  unless score #omegaflowey.bossfight.stop_reason omegaflowey.global.flag matches 4 \
  run teleport @s -141.5 43.0 25.5 -45 0

function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/modify_health_and_tags

function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/log_reason

execute if score #omegaflowey.bossfight.stop_reason omegaflowey.global.flag matches 3 at @s run \
  playsound omega-flowey:player.escaped player @s ~ ~ ~ 1

# Stop reason (5) is the player survived
execute if score #omegaflowey.bossfight.stop_reason omegaflowey.global.flag matches 5 at @s run \
  function omegaflowey.entity:directorial/boss_fight/shared/stop/as_active_player/won
