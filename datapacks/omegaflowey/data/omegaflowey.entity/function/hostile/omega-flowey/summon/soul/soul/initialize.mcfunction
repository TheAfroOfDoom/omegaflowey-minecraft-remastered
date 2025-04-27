tag @s add omega-flowey-remastered
tag @s add model-soul

function gu:generate
data modify storage omegaflowey:bossfight soul_model_uuid set from storage gu:main out

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run tag @s add omegaflowey.soul.warning
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run function omegaflowey.entity:hostile/omega-flowey/animate/warning/soul

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run tag @s add omegaflowey.soul.soul_event
