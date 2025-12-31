function omegaflowey.entity:soul/shared/bullet/initialize
data modify entity @s CustomName set value '"Soul 1 Glove"'
tag @s add soul_1

scoreboard players add #omegaflowey.soul.1.bullets_so_far omegaflowey.soul.flag 1

execute if score #omegaflowey.soul.1.bullets_so_far omegaflowey.soul.flag matches 45 run \
  function omegaflowey.entity:soul/soul_1/act_button/summon
execute if score #omegaflowey.soul.1.bullets_so_far omegaflowey.soul.flag matches 45 run return run \
  function omegaflowey.entity:soul/soul_1/bullet/terminate

execute on passengers if entity @s[tag=aj.omegaflowey_soul_1_glove.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

function gu:generate
data modify storage omegaflowey:soul.1.indicator latest_glove set from storage gu:main out
