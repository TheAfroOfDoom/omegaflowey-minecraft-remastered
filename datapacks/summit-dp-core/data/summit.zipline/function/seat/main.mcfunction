data remove storage smithed:temp zipline
data modify storage smithed:temp zipline.target set from entity @s data.summit_zipline.target
execute on target on vehicle if entity @s[tag=summit.moving_zipline] run return fail
execute on target run tag @s add summit.interact_zipline
execute if data storage smithed:temp zipline{target: ""} run return run tellraw @p[tag=summit.interact_zipline, distance=..10] {text: "This zipline has no target, please set a UUID string at data.summit_zipline.target"}
scoreboard players set $found_target summit.temp 0
function summit.zipline:seat/check_target with storage smithed:temp zipline
execute if score $found_target summit.temp matches 0 run return run tellraw @p[tag=summit.interact_zipline, distance=..10] [{text: "Unable to find target using UUID string: "}, {storage: "smithed:temp", nbt: "zipline.target"}]
execute on vehicle run data modify storage smithed:temp zipline.rotation set from entity @s Rotation
execute on vehicle at @s rotated as @s positioned ^ ^0.5 ^-0.35 summon minecraft:item_display at @s run function summit.zipline:seat/setup with storage smithed:temp zipline
playsound minecraft:block.chain.place player @a ~ ~ ~ 1 1
playsound minecraft:block.wool.break player @a ~ ~ ~ 1 1
playsound minecraft:entity.item_frame.add_item player @a ~ ~ ~ 1 1
playsound summit_ziplines:block.zipline.move block @a ~ ~ ~ 5 1
execute on target run tag @s remove summit.interact_zipline
