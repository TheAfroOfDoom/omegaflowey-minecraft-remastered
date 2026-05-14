$execute as $(uuid) on passengers run data modify entity @s[type=interaction] data.ref set value "$(newRef)"
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
$execute as $(uuid) on passengers if entity @s[type=interaction] run function summit.dev:entity/node/update_info with entity @s data
