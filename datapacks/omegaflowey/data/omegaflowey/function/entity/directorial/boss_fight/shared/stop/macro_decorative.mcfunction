$execute as $(outside_tvscreen_uuid) at @s if entity @s[is_now_playing] run \
  function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/reset_variant
$execute as $(outside_tvscreen_uuid) at @s if entity @s[is_now_playing] run \
  tag @s remove is_now_playing
