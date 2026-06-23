data modify storage omegaflowey:bossfight player_queue set value [{}]

function gu:generate
data modify storage omegaflowey:bossfight player_queue[0].player_uuid set from storage gu:main out
