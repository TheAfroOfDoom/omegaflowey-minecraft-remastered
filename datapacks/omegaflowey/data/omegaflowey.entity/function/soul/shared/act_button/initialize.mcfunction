function omegaflowey.entity:soul/shared/initialize

data modify entity @s CustomName set value '"Act Button"'
execute on passengers if entity @s[tag=aj.omegaflowey_act_button.bone] run \
  data merge entity @s { brightness: { block: 15, sky: 0 } }

tag @s add act-button

function gu:generate
data modify storage omegaflowey:bossfight soul_act_button_uuid set from storage gu:main out

execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 0 run \
  function omegaflowey.entity:soul/soul_0/act_button/initialize with storage omegaflowey:soul.0.indicator
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 1 run \
  function omegaflowey.entity:soul/soul_1/act_button/initialize with storage omegaflowey:soul.1.indicator
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 2 run \
  function omegaflowey.entity:soul/soul_2/act_button/initialize
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 3 run \
  function omegaflowey.entity:soul/soul_3/act_button/initialize
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 5 run \
  function omegaflowey.entity:soul/soul_5/act_button/initialize with storage omegaflowey:soul.5.indicator
