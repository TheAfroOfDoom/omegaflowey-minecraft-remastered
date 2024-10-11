playsound omega-flowey:cutscene.intro.laugh ambient @a ~ ~ ~ 5 1

$execute as $(mouth_uuid) run function animated_java:mouth/animations/laugh/play
scoreboard players operation @s aj.nose_move_slow_shake.frame = @s aj.nose_move_slow.frame
$execute as $(nose_uuid) run function animated_java:nose/animations/nose_move_slow_shake/resume
$execute as $(bossfight_tvscreen_uuid) run function animated_java:tv_screen/animations/intro_shake/play
