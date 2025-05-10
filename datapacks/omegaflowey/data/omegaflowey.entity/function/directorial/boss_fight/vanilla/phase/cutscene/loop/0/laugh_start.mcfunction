function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: "\
  execute at @s run playsound omega-flowey:cutscene.intro.laugh ambient @s ~ ~ ~ 1 1\
"}

$execute as $(arm_vine_left_uuid) run \
  function animated_java:omegaflowey_arm_vine/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(arm_vine_right_uuid) run \
  function animated_java:omegaflowey_arm_vine_right/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }

$execute as $(attack_lower_eye_left_uuid) run \
  function animated_java:omegaflowey_lower_eye/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(attack_lower_eye_right_uuid) run \
  function animated_java:omegaflowey_lower_eye/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }

$execute as $(model_mouth_uuid) run \
  function animated_java:omegaflowey_mouth/animations/omegaflowey_laugh/tween { duration: 1, to_frame: 0 }

data modify storage omegaflowey:bossfight temp set value { duration: 1 }
execute store result storage omegaflowey:bossfight temp.to_frame int 1 run scoreboard players get @s aj.omegaflowey_nose_move_slow.frame
$execute as $(model_nose_uuid) run \
  function animated_java:omegaflowey_nose/animations/omegaflowey_nose_move_slow_shake/tween with storage omegaflowey:bossfight temp

$execute as $(petal_pipe_lower_left_uuid) run \
  function animated_java:omegaflowey_petal_pipe_circle_simplified/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(petal_pipe_upper_left_uuid) run \
  function animated_java:omegaflowey_petal_pipe_circle_simplified/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(petal_pipe_lower_right_uuid) run \
  function animated_java:omegaflowey_petal_pipe_circle_simplified/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(petal_pipe_upper_right_uuid) run \
  function animated_java:omegaflowey_petal_pipe_circle_simplified/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }

$execute as $(petal_pipe_middle_right_uuid) run \
  function animated_java:omegaflowey_petal_pipe_middle_simplified/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(petal_pipe_middle_left_uuid) run \
  function animated_java:omegaflowey_petal_pipe_middle_simplified/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }

$execute as $(bossfight_tvscreen_uuid) run \
  function animated_java:omegaflowey_tv_screen/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(bossfight_tvscreen_uuid) run \
  function animated_java:omegaflowey_tv_screen/variants/intro_laughing/apply

$execute as $(attack_upper_eye_left_uuid) run \
  function animated_java:omegaflowey_upper_eye/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
$execute as $(attack_upper_eye_right_uuid) run \
  function animated_java:omegaflowey_upper_eye/animations/omegaflowey_intro_shake/tween { duration: 1, to_frame: 0 }
