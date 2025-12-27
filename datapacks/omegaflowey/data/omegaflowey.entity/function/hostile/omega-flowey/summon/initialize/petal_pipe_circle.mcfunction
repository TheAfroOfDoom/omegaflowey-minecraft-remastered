function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-petal-pipe
tag @s add omega-flowey-petal-pipe-circle

execute on passengers if entity @s[tag=aj.global.bone] run data merge entity @s { brightness: { block: 12, sky: 0 } }

function gu:generate

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/petal_pipe_circle/lower_right
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/petal_pipe_circle/lower_left
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 3 run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/petal_pipe_circle/upper_right
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 4 run function omegaflowey.entity:hostile/omega-flowey/summon/initialize/petal_pipe_circle/upper_left
