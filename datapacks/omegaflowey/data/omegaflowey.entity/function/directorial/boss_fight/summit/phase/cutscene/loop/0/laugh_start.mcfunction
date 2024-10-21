playsound omega-flowey:cutscene.intro.laugh ambient @a ~ ~ ~ 5 1

$execute as $(model_mouth_uuid) run function animated_java:omegaflowey_mouth/animations/omegaflowey_laugh/play
scoreboard players operation @s aj.omegaflowey_nose_move_slow_shake.frame = @s aj.omegaflowey_nose_move_slow.frame
$execute as $(model_nose_uuid) run function animated_java:omegaflowey_nose/animations/omegaflowey_nose_move_slow_shake/resume
$execute as $(bossfight_tvscreen_uuid) run function animated_java:omegaflowey_tv_screen/animations/omegaflowey_intro_shake/play
