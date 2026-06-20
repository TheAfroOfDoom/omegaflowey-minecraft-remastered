function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/set_screen/clear
$execute as $(outside_tvscreen_uuid) run tag @s remove is_active_death_animation
$execute as $(outside_tvscreen_uuid) run tag @s remove is_now_playing
$execute as $(outside_tvscreen_uuid) run tag @s remove is_winner_animation
$execute as $(outside_tvscreen_uuid) run tag @s remove queued_winner_animation
function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/set_variant_shared/macro_set_static with storage omegaflowey:decorative
schedule function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/winner/start/scheduled 10t replace
