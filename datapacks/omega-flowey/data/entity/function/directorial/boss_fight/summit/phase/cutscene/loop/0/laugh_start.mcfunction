playsound omega-flowey:cutscene.intro.laugh ambient @a ~ ~ ~ 5 1

$execute as $(attack_lower_eye_left_uuid) run function animated_java:lower_eye/animations/intro_shake/play
$execute as $(attack_lower_eye_right_uuid) run function animated_java:lower_eye/animations/intro_shake/play

$execute as $(mouth_uuid) run function animated_java:mouth/animations/laugh/play

scoreboard players operation @s aj.nose_move_slow_shake.frame = @s aj.nose_move_slow.frame
$execute as $(nose_uuid) run function animated_java:nose/animations/nose_move_slow_shake/resume

$execute as $(petal_pipe_lower_left_uuid) run function animated_java:petal_pipe_circle/animations/intro_shake/play
$execute as $(petal_pipe_upper_left_uuid) run function animated_java:petal_pipe_circle/animations/intro_shake/play
$execute as $(petal_pipe_lower_right_uuid) run function animated_java:petal_pipe_circle/animations/intro_shake/play
$execute as $(petal_pipe_upper_right_uuid) run function animated_java:petal_pipe_circle/animations/intro_shake/play

$execute as $(petal_pipe_middle_right_uuid) run function animated_java:petal_pipe_middle/animations/intro_shake/play
$execute as $(petal_pipe_middle_left_uuid) run function animated_java:petal_pipe_middle/animations/intro_shake/play

$execute as $(bossfight_tvscreen_uuid) run function animated_java:tv_screen/animations/intro_shake/play

$execute as $(attack_upper_eye_left_uuid) run function animated_java:upper_eye/animations/intro_shake/play
$execute as $(attack_upper_eye_right_uuid) run function animated_java:upper_eye/animations/intro_shake/play
