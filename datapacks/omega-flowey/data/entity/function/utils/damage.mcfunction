# Quit early if player is currently damage-immune
execute if score #omegaflowey.bossfight.player_is_damage_immune global.flag matches 1 run return 0

# Check if player is within some radius
$execute as $(active_player_uuid) if entity @s[distance=..$(radius), tag=omegaflowey.player.fighting_flowey] run \
  function entity:utils/damage/as_player with storage utils:damage
