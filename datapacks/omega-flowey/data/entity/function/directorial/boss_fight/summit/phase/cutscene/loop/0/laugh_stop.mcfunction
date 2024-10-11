scoreboard players operation @s aj.nose_move_slow.frame = @s aj.nose_move_slow_shake.frame
$execute as $(nose_uuid) run function animated_java:nose/animations/nose_move_slow/resume

$execute as $(bossfight_tvscreen_uuid) run function animated_java:tv_screen/variants/smiling/apply
