# Inputted scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-friendliness-pellets attack.indicator.clock.delay

scoreboard players set @s attack.bullets.clock.i -1
scoreboard players set @s attack.bullets.count 0
scoreboard players operation @s attack.bullets.clock.delay = #attack-friendliness-pellets attack.bullets.clock.delay
scoreboard players operation @s attack.bullets.total = #attack-friendliness-pellets attack.bullets.total
scoreboard players operation @s attack.indicator.animation.index = #attack-friendliness-pellets attack.indicator.animation.index
scoreboard players operation @s attack.indicator.radius = #attack-friendliness-pellets attack.indicator.radius

# Calculated scores
scoreboard players set @s attack.d-phi 360
scoreboard players operation @s attack.d-phi /= @s attack.bullets.total

# Set group ID
function entity:group/set

# Store `group.id` for blinking-ring
execute store result storage group id int 1 run scoreboard players get @s group.id

# Summon blinking-ring
function animated_java:friendliness_pellet_ring/summon

# Initialize blinking-ring
execute as @e[tag=friendliness-pellet-ring-new] run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/initialize/friendliness-pellet-ring

# Randomize initial yaw
execute store result entity @s Rotation[0] float 0.01 run random value 0..35999
execute store result score @s math.0 run data get entity @s Rotation[0] 100

# Remove tags
tag @s remove attack-indicator-new
