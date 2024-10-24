function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-petal-pipe
tag @s add omega-flowey-petal-pipe-middle

execute on passengers if entity @s[tag=aj.bone] run data merge entity @s { brightness: { block: 12, sky: 0 } }

function gu:generate

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run tag @s add petal_pipe.right
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run \
  data modify storage omegaflowey:bossfight petal_pipe_middle_right_uuid set from storage gu:main out

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run tag @s add petal_pipe.left
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run \
  data modify storage omegaflowey:bossfight petal_pipe_middle_left_uuid set from storage gu:main out
