schedule clear omegaflowey.main:summit/room/outside/setup/tv_screen/death_animation/soul_break/scheduled
schedule clear omegaflowey.main:summit/room/outside/setup/tv_screen/death_animation/soul_idle/scheduled
schedule clear omegaflowey.main:summit/room/outside/setup/tv_screen/death_animation/soul_shatter/macro/as_root/reset_variant
schedule clear omegaflowey.main:summit/room/outside/setup/tv_screen/death_animation/soul_shatter/scheduled
schedule clear omegaflowey.main:summit/room/outside/setup/tv_screen/reset_variant
schedule clear omegaflowey.main:summit/room/outside/setup/tv_screen/set_variant_day/scheduled
schedule clear omegaflowey.main:summit/room/outside/setup/tv_screen/set_variant_night/scheduled

execute as @a[distance=..64] run function omegaflowey.main:summit/room/outside/setup/tv_screen/set_screen/clear/as_nearby_players
