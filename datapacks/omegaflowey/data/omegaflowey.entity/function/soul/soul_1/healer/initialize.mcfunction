function omegaflowey.entity:soul/shared/healer/initialize
data modify entity @s CustomName set value '"Soul 1 Thumb"'
tag @s add soul_1

scoreboard players operation @s aj.omegaflowey_move.frame = #omegaflowey.soul.1.healer_frame omegaflowey.soul.flag

execute on passengers if entity @s[tag=aj.omegaflowey_soul_1_thumb.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

function gu:generate
data modify storage omegaflowey:soul.1.indicator latest_glove set from storage gu:main out
