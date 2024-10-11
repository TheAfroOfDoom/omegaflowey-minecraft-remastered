function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-nose

execute on passengers if entity @s[tag=aj.bone] run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared/bone
