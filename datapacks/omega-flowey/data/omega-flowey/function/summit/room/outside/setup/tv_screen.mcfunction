tag @s add tv_screen.outside
tag @s remove tv-screen-new

execute on passengers if entity @s[tag=aj.tv_screen.bone] run data modify entity @s view_range set value 2.5f