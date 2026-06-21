scoreboard players operation $global summit.swing_id = @s summit.swing_id
data modify storage summit:temp swings.rotation set from entity @s Rotation[0]
execute rotated as @s positioned ^ ^-5.5 ^ run function summit.swings:seat/create with storage summit:temp swings
