scoreboard players add @s soul.clock.i 1

# Terminate bullets once they go far enough in the -X direction
execute store result score @s soul.bullet.position.x run data get entity @s Pos[0] 100
execute if score @s soul.bullet.position.x matches ..-3300 run function entity:soul/soul_2/bullet/terminate
execute if score @s soul.bullet.position.x matches ..-3300 run return 0

# Move forward
teleport @s ~-0.4 ~ ~
