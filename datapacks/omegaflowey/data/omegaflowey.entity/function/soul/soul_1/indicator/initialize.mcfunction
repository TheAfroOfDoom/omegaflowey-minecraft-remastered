function omegaflowey.entity:soul/shared/indicator/initialize
data modify entity @s CustomName set value '"Soul 1 Indicator"'
tag @s add soul_1

execute rotated ~ ~ positioned ^ ^ ^5 run \
  function omegaflowey.entity:soul/soul_1/bullet/summon
data modify entity @s data.glove_0.glove_id set from storage omegaflowey:soul.1.indicator latest_glove

execute rotated ~51.4285714286 ~ positioned ^ ^0.01 ^5 run \
  function omegaflowey.entity:soul/soul_1/bullet/summon
data modify entity @s data.glove_1.glove_id set from storage omegaflowey:soul.1.indicator latest_glove

execute rotated ~102.8571429 ~ positioned ^ ^0.02 ^5 run \
  function omegaflowey.entity:soul/soul_1/bullet/summon
data modify entity @s data.glove_2.glove_id set from storage omegaflowey:soul.1.indicator latest_glove

execute rotated ~154.2857143 ~ positioned ^ ^0.03 ^5 run \
  function omegaflowey.entity:soul/soul_1/bullet/summon
data modify entity @s data.glove_3.glove_id set from storage omegaflowey:soul.1.indicator latest_glove

execute rotated ~205.7142857 ~ positioned ^ ^0.04 ^5 run \
  function omegaflowey.entity:soul/soul_1/bullet/summon
data modify entity @s data.glove_4.glove_id set from storage omegaflowey:soul.1.indicator latest_glove

execute rotated ~257.1428571 ~ positioned ^ ^0.05 ^5 run \
  function omegaflowey.entity:soul/soul_1/bullet/summon
data modify entity @s data.glove_5.glove_id set from storage omegaflowey:soul.1.indicator latest_glove

execute rotated ~308.5714286 ~ positioned ^ ^0.06 ^5 run \
  function omegaflowey.entity:soul/soul_1/bullet/summon
data modify entity @s data.glove_6.glove_id set from storage omegaflowey:soul.1.indicator latest_glove
