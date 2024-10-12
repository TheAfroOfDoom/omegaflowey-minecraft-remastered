tag @s add omega-flowey-remastered
tag @s add model-soul

function gu:generate
data modify storage omegaflowey:bossfight soul_model_uuid set from storage gu:main out

execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 1 run tag @s add soul.warning
execute if score #omegaflowey.summon.tag_variant omegaflowey.global.flag matches 2 run tag @s add soul.soul_event
