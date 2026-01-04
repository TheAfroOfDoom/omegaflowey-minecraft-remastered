function omegaflowey.entity:soul/shared/healer/initialize
data modify entity @s CustomName set value '"Soul 2 Note"'
tag @s add soul_2

scoreboard players operation @s aj.omegaflowey_move.frame = #omegaflowey.soul.2.healer_frame omegaflowey.soul.flag

execute on passengers if entity @s[tag=aj.omegaflowey_soul_2_thumb.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }
