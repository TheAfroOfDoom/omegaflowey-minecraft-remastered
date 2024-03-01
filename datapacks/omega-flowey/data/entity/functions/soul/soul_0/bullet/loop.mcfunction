## Delete bullets once they go far enough in the +Z direction so we can minimize number of entities
# this is good idea for performance optimizing since the first 3 rows in the +Z direction
# will be too far to be visible once the ACT button model is further along enough in the +Z direction
execute store result score @s soul.bullet.position.z run data get entity @s Pos[2] 100
# Z: -26.0 was found manually
execute if score @s soul.bullet.position.z matches -2600.. run function entity:soul/soul_0/bullet/terminate

# Rotate animation
teleport @s ~ ~ ~ ~-6 ~
