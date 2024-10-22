$execute as $(bossfight_tvscreen_uuid) run function animated_java:omegaflowey_tv_screen/variants/reveal_1/apply
$execute as $(bossfight_tvscreen_uuid) on passengers if entity @s[tag=aj.omegaflowey_tv_screen.bone] run \
  data merge entity @s { brightness: { block: 13, sky: 0 } }
