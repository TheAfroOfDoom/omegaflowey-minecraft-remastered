tellraw @s {translate: "Lay out a path by placing a connected path of empty item frames. An entrance or exit is marked by an upwards facing item frame\n", color: "gold"}
tellraw @s {translate: "Creating a path: %s\nThis has to be a full playsound command. The recommended camera distance is 3.5\n", color: "gold", with: [{text: "'/function summit.climbing:create_path/init {camera_distance:<FLOAT>,sound:\"<PLAYSOUND COMMAND>\"}'", color: "aqua"}]}
tellraw @s {translate: "Deleting a path: %s\n", color: "gold", with: [{text: "'/function summit.climbing:delete_path/init'", color: "aqua"}]}
tellraw @s {translate: "Setting the blocks for a path: %s\n", color: "gold", with: [{text: "'/function summit.climbing:create_path/blocks/init {block_group:1}'", color: "aqua"}]}
tellraw @s {translate: "All commands effect the nearest path. Standing on an entrance tile will ensure that the correct path is targetted", color: "gold"}
