## Iteratively summons the next row of stars

# randomize number of stars to summon
execute store result score @s omegaflowey.soul.indicator.bullets.remaining run random value 1..3

# stars row is centered in X between two rows of shoes
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.soul.bullet.position.x
# bullets move at 0.4m/tick, summon every 20 ticks.
# so centered is the velocity * rate / 2 => 0.4 m/t * 10 ticks / 2 => 4 (*100 for positional scaling)
scoreboard players add @s omegaflowey.math.0 400
execute store result storage omegaflowey:soul.2 next_bullet_x float 0.01 run scoreboard players get @s omegaflowey.math.0

function omegaflowey.entity:soul/soul_2/indicator/loop/next_row/stars/iterate
