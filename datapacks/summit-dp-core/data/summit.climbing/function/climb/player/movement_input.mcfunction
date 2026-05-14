$data modify storage summit.climbing:master init.move.input set value "$(input)"
data modify storage summit.climbing:master init.move.player_uuid set from entity @s UUID
function summit.climbing:climb/player/execute_as_climber with storage summit.climbing:master init.move
