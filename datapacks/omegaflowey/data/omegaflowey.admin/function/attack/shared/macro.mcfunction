$execute \
  if entity @s[tag=omegaflowey.player.fighting_flowey] \
  if data storage gu:main { out: "$(active_player_uuid)" } run \
  scoreboard players set #omegaflowey.admin.is_active_player omegaflowey.global.flag 1
