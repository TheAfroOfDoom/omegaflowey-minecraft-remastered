# Don't switch to now_playing variant if in the middle of death animation
execute if entity @s[tag=is_active_death_animation] run return 0

function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/set_screen/clear
$execute as $(outside_tvscreen_uuid) run tag @s remove is_now_playing
function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/set_variant_shared/macro_set_static with storage omegaflowey:decorative
schedule function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/now_playing/scheduled 10t replace
