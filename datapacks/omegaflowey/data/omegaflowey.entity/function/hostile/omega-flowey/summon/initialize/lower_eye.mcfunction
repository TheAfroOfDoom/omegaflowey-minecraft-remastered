function entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-lower-eye

execute on passengers if entity @s[tag=aj.bone] run function entity:hostile/omega-flowey/summon/initialize/shared/bone

function gu:generate

execute if score #omegaflowey.summon.tag_variant global.flag matches 1 run \
  function entity:hostile/omega-flowey/summon/initialize/lower_eye/right
execute if score #omegaflowey.summon.tag_variant global.flag matches 2 run \
  function entity:hostile/omega-flowey/summon/initialize/lower_eye/left
