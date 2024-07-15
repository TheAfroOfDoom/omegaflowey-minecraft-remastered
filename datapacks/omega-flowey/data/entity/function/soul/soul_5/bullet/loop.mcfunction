# Move forward
teleport @s ^ ^ ^0.7

## Delete bullets once they visually escape the arena
execute store result score @s soul.bullet.position.x run data get entity @s Pos[0] 100
execute store result score @s soul.bullet.position.z run data get entity @s Pos[2] 100
execute unless score @s soul.bullet.position.x matches -3100..3200 run tag @s add should-terminate
execute unless score @s soul.bullet.position.z matches -9600..-4600 run tag @s add should-terminate
execute if entity @s[tag=should-terminate] run function entity:soul/soul_5/bullet/terminate
