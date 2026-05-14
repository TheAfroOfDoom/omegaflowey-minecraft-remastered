execute on passengers if entity @s[type=minecraft:player] run function summit.zipline:move/launch
execute on passengers run kill @s[type=!minecraft:player]
kill @s
playsound minecraft:block.chain.break player @a ~ ~ ~ 1 1
playsound minecraft:block.wool.break player @a ~ ~ ~ 1 1
playsound minecraft:entity.item_frame.add_item player @a ~ ~ ~ 1 1
