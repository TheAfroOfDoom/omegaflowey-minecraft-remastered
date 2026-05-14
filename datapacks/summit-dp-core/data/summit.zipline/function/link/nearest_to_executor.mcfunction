function gu:convert with entity @s
execute as @n[type=item_display, tag=summit.zipline] on passengers run data modify entity @s data.summit_zipline.target set from storage gu:main out
rotate @n[type=item_display, tag=summit.zipline] facing entity @s
data modify entity @n[type=item_display, tag=summit.zipline] Rotation[1] set value 0
