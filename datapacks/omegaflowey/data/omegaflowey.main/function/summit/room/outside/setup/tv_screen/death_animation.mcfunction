function omegaflowey.main:summit/room/outside/setup/tv_screen/set_screen/clear
$execute as $(outside_tvscreen_uuid) run tag @s remove is_active_death_animation
function omegaflowey.main:summit/room/outside/setup/tv_screen/set_variant_shared/macro_set_static with storage omegaflowey:decorative
schedule function omegaflowey.main:summit/room/outside/setup/tv_screen/death_animation/soul_idle/scheduled 10t replace
