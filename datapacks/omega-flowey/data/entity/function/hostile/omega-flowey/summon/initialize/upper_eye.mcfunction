function entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-upper-eye

execute on passengers if entity @s[tag=aj.upper_eye.bone] run function entity:hostile/omega-flowey/summon/initialize/upper_eye/bone

function gu:generate

execute if score #omegaflowey.summon.tag_variant global.flag matches 1 run \
  function entity:hostile/omega-flowey/summon/initialize/upper_eye/right
execute if score #omegaflowey.summon.tag_variant global.flag matches 2 run \
  function entity:hostile/omega-flowey/summon/initialize/upper_eye/left
