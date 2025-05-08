function omegaflowey.entity:hostile/omega-flowey/summon/initialize/shared
tag @s add omega-flowey-arm-vine

execute on passengers if entity @s[tag=aj.bone] run data merge entity @s { brightness: { block: 12, sky: 0 } }

function gu:generate
data modify storage omegaflowey:bossfight arm_vine_left_uuid set from storage gu:main out
