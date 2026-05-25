tag @s add tv_screen.boss_fight

function gu:generate
data modify storage omegaflowey:bossfight bossfight_tvscreen_uuid set from storage gu:main out

execute on passengers if entity @s[tag=aj.omegaflowey_tv_screen.bone.box] run \
  data merge entity @s { brightness: { block: 11, sky: 0 } }
