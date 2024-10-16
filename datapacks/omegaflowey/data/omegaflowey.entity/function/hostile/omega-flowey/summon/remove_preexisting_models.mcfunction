function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
$execute \
  unless score #omegaflowey.bossfight.skip_resummon_tvscreen omegaflowey.global.flag matches 1 \
  as $(outside_tvscreen_uuid) \
  run function animated_java:omegaflowey_tv_screen/remove/this
