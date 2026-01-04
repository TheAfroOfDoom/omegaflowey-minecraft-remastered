## Iteratively summons the next row of shoes

# reset `math.0` to initial z coord + random offset

# random offset = -2..2
execute store result score @s omegaflowey.math.0 run random value -2..2
# => [-1.00, -0.50, 0.00, 0.50, 1.00]
scoreboard players operation @s omegaflowey.math.0 *= #omegaflowey.const.50 omegaflowey.math.const
scoreboard players operation @s omegaflowey.math.0 += @s omegaflowey.soul.bullet.position.z

# reset bullets remaining to summon
scoreboard players operation @s omegaflowey.soul.indicator.bullets.remaining = @s omegaflowey.soul.indicator.bullets.total

function omegaflowey.entity:soul/soul_3/indicator/loop/next_row/shoes/iterate
