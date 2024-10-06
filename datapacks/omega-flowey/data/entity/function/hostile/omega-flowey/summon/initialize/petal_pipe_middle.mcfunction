function entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-petal-pipe
tag @s add omega-flowey-petal-pipe-middle

execute if score #omegaflowey.summon.tag_variant global.flag matches 1 run tag @s add petal_pipe.right
execute if score #omegaflowey.summon.tag_variant global.flag matches 2 run tag @s add petal_pipe.left
