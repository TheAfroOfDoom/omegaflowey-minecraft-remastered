function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-mouth

execute on passengers if entity @s[tag=aj.bone] run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared/bone

function gu:generate
data modify storage omegaflowey:bossfight model_mouth_uuid set from storage gu:main out
