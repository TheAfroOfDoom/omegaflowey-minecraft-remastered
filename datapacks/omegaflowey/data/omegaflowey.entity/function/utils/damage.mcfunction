# Quit early if player is currently damage-immune or has already died
execute if score #omegaflowey.bossfight.player_is_damage_immune omegaflowey.global.flag matches 1 run return 0
execute if score #omegaflowey.bossfight.player_died omegaflowey.global.flag matches 1 run return 0

# Check if player is within some radius
$execute as $(active_player_uuid) if entity @s[distance=..$(radius), tag=omegaflowey.player.fighting_flowey] run \
  function omegaflowey.entity:utils/damage/as_player with storage omegaflowey:utils.damage

# NOTE: UNCOMMENT THIS TO TEST DAMAGE HITBOXES
# $execute as $(active_player_uuid) if entity @s[distance=..$(radius), tag=omegaflowey.player.fighting_flowey] run \
  playsound omega-flowey:soul.touch master @a ~ ~ ~
