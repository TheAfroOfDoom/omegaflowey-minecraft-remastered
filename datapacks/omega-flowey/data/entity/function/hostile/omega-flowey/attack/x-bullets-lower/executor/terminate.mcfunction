$execute as $(attack_lower_eye_right_uuid) run \
  function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/terminate/lower_eye
$execute as $(attack_lower_eye_left_uuid) run \
  function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/terminate/lower_eye

$execute as $(boss_fight_uuid) run function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/terminate/boss_fight

kill @s
