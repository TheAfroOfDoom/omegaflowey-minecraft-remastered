function omegaflowey.entity:soul/shared/initialize

data modify entity @s CustomName set value '"Act Button"'
tag @s add act-button

function gu:generate
data modify storage omegaflowey:bossfight soul_act_button_uuid set from storage gu:main out

execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 0 run \
  function omegaflowey.entity:soul/soul_0/act_button/initialize with storage omegaflowey:soul.0.indicator
execute if score #omegaflowey.soul.summon_type omegaflowey.global.flag matches 5 run \
  function omegaflowey.entity:soul/soul_5/act_button/initialize with storage omegaflowey:soul.5.indicator
