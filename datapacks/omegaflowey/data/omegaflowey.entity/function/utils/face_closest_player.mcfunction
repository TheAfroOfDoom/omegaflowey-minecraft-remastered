execute store result storage omegaflowey:entity.utils.face_closest_player x float 0.01 run \
  scoreboard players get @s omegaflowey.attack.position.x
execute store result storage omegaflowey:entity.utils.face_closest_player y float 0.01 run \
  scoreboard players get @s omegaflowey.attack.position.y
execute store result storage omegaflowey:entity.utils.face_closest_player z float 0.01 run \
  scoreboard players get @s omegaflowey.attack.position.z
data modify storage omegaflowey:entity.utils.face_closest_player active_player_uuid set from \
  storage omegaflowey:bossfight active_player_uuid

function omegaflowey.entity:utils/face_closest_player_macro with storage omegaflowey:entity.utils.face_closest_player
