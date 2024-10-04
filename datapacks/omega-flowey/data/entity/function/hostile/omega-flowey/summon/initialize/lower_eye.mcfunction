function entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-lower-eye

execute if score #omegaflowey.summon.tag_variant global.flag matches 1 run tag @s add lower_eye.right
execute if score #omegaflowey.summon.tag_variant global.flag matches 2 run tag @s add lower_eye.left
