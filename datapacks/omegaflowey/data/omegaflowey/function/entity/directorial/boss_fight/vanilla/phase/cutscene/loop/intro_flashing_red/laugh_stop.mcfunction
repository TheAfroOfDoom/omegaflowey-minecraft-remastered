data modify storage omegaflowey:bossfight temp set value { duration: 1 }
execute store result storage omegaflowey:bossfight temp.to_frame int 1 run scoreboard players get @s aj.omegaflowey_nose_move_slow_shake.frame
$execute as $(model_nose_uuid) run function animated_java:omegaflowey_nose/animations/omegaflowey_nose_move_slow/tween with storage omegaflowey:bossfight temp
