tag @s add tv_screen.outside

execute on passengers if entity @s[tag=aj.omegaflowey_tv_screen.bone] run function omegaflowey.main:summit/room/outside/setup/tv_screen/bone

function gu:generate
data modify storage omegaflowey:decorative outside_tvscreen_uuid set from storage gu:main out
