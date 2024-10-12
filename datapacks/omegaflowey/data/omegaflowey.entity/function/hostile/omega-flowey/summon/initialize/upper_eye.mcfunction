function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-upper-eye

execute on passengers if entity @s[tag=aj.bone] run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared/bone

function gu:generate

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run \
  function omegaflowey.entity:hostile/omega-flowey/summon/initialize/upper_eye/right
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run \
  function omegaflowey.entity:hostile/omega-flowey/summon/initialize/upper_eye/left
