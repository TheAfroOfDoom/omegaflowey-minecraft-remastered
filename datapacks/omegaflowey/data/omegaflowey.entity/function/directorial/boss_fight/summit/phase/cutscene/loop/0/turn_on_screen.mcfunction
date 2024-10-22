$execute as $(bossfight_tvscreen_uuid) run function animated_java:omegaflowey_tv_screen/variants/reveal_1/apply
$execute as $(bossfight_tvscreen_uuid) on passengers if entity @s[tag=aj.omegaflowey_tv_screen.bone] run \
  data merge entity @s { brightness: { block: 11, sky: 0 } }

$execute at $(bossfight_tvscreen_uuid) run function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: "\
  playsound omega-flowey:cutscene.intro.turn_on ambient @s ~ ~ ~ 5 1\
"}
