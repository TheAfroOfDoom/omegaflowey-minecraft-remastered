$execute as $(attack_upper_eye_right_uuid) run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/terminate/upper_eye
$execute as $(attack_upper_eye_left_uuid) run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/terminate/upper_eye

$execute as $(boss_fight_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/terminate/boss_fight

kill @s
