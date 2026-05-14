$execute on passengers rotated as @s[tag=summit.zipline_compass,type=minecraft:item_display] on vehicle run tp @s ^ ^ ^$(speed)
$execute at $(target) if entity @s[distance=..1] run function summit.zipline:move/start_stop
