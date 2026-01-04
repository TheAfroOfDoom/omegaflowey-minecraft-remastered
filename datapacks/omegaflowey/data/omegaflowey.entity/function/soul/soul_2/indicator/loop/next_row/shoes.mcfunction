## Iteratively summons the next row of shoes

# reset `math.0` to initial z coord + random offset

# random offset = -2..2
execute store result score @s math.0 run random value -2..2
# => [-1.00, -0.50, 0.00, 0.50, 1.00]
scoreboard players operation @s math.0 *= #50 math.const
scoreboard players operation @s math.0 += @s soul.bullet.position.z

# reset bullets remaining to summon
scoreboard players operation @s soul.indicator.bullets.remaining = @s soul.indicator.bullets.total

function entity:soul/soul_2/indicator/loop/next_row/shoes/iterate
