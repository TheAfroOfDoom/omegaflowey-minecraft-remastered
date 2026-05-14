$data merge entity @s {Tags:["summit.climbing.climber","summit.climbing.entity"],Rotation:[180.0f,90.0f],data:{UUID:"$(UUID)"}}
data modify entity @s data.id set from entity @n[type=minecraft:interaction, tag=summit.climbing.entrance, distance=..1] data.id
function summit.climbing:climb/interaction/get_data with entity @s data
function summit.climbing:climb/get_tile_data/init
execute at @s rotated as @s as @p[tag=summit.climbing.current_main, distance=..32] run function summit.climbing:climb/player/enter/init with entity @s
execute if data entity @s data.tile_data.up.out run function summit.climbing:climb/interaction/rotation {angle: 0}
execute if data entity @s data.tile_data.right.out run function summit.climbing:climb/interaction/rotation {angle: 90}
execute if data entity @s data.tile_data.down.out run function summit.climbing:climb/interaction/rotation {angle: 180}
execute if data entity @s data.tile_data.left.out run function summit.climbing:climb/interaction/rotation {angle: 270}
execute if data entity @s data.tile_data.up.in run function summit.climbing:climb/interaction/rotation {angle: 180}
execute if data entity @s data.tile_data.right.in run function summit.climbing:climb/interaction/rotation {angle: 270}
execute if data entity @s data.tile_data.down.in run function summit.climbing:climb/interaction/rotation {angle: 0}
execute if data entity @s data.tile_data.left.in run function summit.climbing:climb/interaction/rotation {angle: 90}
execute if data entity @s[tag=!summit.climbing.initialized_climber] data.tile_data.down at @s rotated as @s run function summit.climbing:climb/move/single_space/init {direction: "down"}
execute if data entity @s[tag=!summit.climbing.initialized_climber] data.tile_data.left at @s rotated as @s run function summit.climbing:climb/move/single_space/init {direction: "left"}
execute if data entity @s[tag=!summit.climbing.initialized_climber] data.tile_data.up at @s rotated as @s run function summit.climbing:climb/move/single_space/init {direction: "up"}
execute if data entity @s[tag=!summit.climbing.initialized_climber] data.tile_data.right at @s rotated as @s run function summit.climbing:climb/move/single_space/init {direction: "right"}
