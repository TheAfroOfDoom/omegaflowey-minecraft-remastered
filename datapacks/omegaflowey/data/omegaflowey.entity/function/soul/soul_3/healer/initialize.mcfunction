function omegaflowey.entity:soul/shared/healer/initialize
data modify entity @s CustomName set value '"Soul 3 Note"'
tag @s add soul_3

scoreboard players operation @s aj.omegaflowey_move.frame = #omegaflowey.soul.3.healer_frame omegaflowey.soul.flag

execute on passengers if entity @s[tag=aj.omegaflowey_soul_3_thumb.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }
