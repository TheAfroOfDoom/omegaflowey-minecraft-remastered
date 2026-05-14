data modify storage summit.climbing:master init.rotation set from entity @s Rotation[0]
data modify storage summit.climbing:master init.UUID set from entity @s data.UUID
execute positioned ^ ^ ^-0.1 run function summit.climbing:climb/mannequin/summon with storage summit.climbing:master init
