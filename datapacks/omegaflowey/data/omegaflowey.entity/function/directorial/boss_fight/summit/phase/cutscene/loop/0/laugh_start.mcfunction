playsound omega-flowey:cutscene.intro.laugh ambient @a ~ ~ ~ 5 1

$execute as $(attack_lower_eye_left_uuid) run function animated_java:omegaflowey_lower_eye/animations/omegaflowey_intro_shake/play
$execute as $(attack_lower_eye_right_uuid) run function animated_java:omegaflowey_lower_eye/animations/omegaflowey_intro_shake/play

$execute as $(model_mouth_uuid) run function animated_java:omegaflowey_mouth/animations/omegaflowey_laugh/play

scoreboard players operation @s aj.omegaflowey_nose_move_slow_shake.frame = @s aj.omegaflowey_nose_move_slow.frame
$execute as $(model_nose_uuid) run function animated_java:omegaflowey_nose/animations/omegaflowey_nose_move_slow_shake/resume

$execute as $(petal_pipe_lower_left_uuid) run function animated_java:omegaflowey_petal_pipe_circle/animations/omegaflowey_intro_shake/play
$execute as $(petal_pipe_upper_left_uuid) run function animated_java:omegaflowey_petal_pipe_circle/animations/omegaflowey_intro_shake/play
$execute as $(petal_pipe_lower_right_uuid) run function animated_java:omegaflowey_petal_pipe_circle/animations/omegaflowey_intro_shake/play
$execute as $(petal_pipe_upper_right_uuid) run function animated_java:omegaflowey_petal_pipe_circle/animations/omegaflowey_intro_shake/play

$execute as $(petal_pipe_middle_right_uuid) run function animated_java:omegaflowey_petal_pipe_middle/animations/omegaflowey_intro_shake/play
$execute as $(petal_pipe_middle_left_uuid) run function animated_java:omegaflowey_petal_pipe_middle/animations/omegaflowey_intro_shake/play

$execute as $(bossfight_tvscreen_uuid) run function animated_java:omegaflowey_tv_screen/animations/omegaflowey_intro_shake/play
$execute as $(bossfight_tvscreen_uuid) run function animated_java:omegaflowey_tv_screen/variants/omegaflowey_intro_laughing/apply

$execute as $(attack_upper_eye_left_uuid) run function animated_java:omegaflowey_upper_eye/animations/omegaflowey_intro_shake/play
$execute as $(attack_upper_eye_right_uuid) run function animated_java:omegaflowey_upper_eye/animations/omegaflowey_intro_shake/play
