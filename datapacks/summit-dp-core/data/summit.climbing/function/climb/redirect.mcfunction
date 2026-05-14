execute if data entity @s {data: {tile_data: {direction: 0b}}} run return fail
execute if data entity @s {data: {tile_data: {direction: 1b}}} run return fail
execute if data entity @s {data: {tile_data: {direction: 2b}}} run rotate @s 0 0
execute if data entity @s {data: {tile_data: {direction: 3b}}} run rotate @s 180 0
execute if data entity @s {data: {tile_data: {direction: 4b}}} run rotate @s -90 0
execute if data entity @s {data: {tile_data: {direction: 5b}}} run rotate @s 90 0
execute at @s rotated as @s run function summit.climbing:climb/player/change_seat_pos with entity @s data
