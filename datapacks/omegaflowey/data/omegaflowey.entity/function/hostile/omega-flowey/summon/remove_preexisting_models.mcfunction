function omegaflowey.entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
$execute \
  unless score #omegaflowey.bossfight.skip_resummon_tvscreen omegaflowey.global.flag matches 1 \
  as $(bossfight_tvscreen_uuid) \
  run function animated_java:omegaflowey_tv_screen/remove/this
$execute \
  as $(soul_tvscreen_uuid) \
  run function animated_java:omegaflowey_tv_screen/remove/this

$execute as $(soul_model_uuid) run function animated_java:omegaflowey_soul/remove/this
