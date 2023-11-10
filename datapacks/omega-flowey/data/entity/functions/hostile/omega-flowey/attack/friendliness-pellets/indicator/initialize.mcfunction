# Inputted scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-friendliness-pellets attack.clock.delay

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

# Summon blinking-ring
function animated_java:friendliness_pellet_ring/summon
# TODO shouldn't need this custom tag adding stuff. fix when Blockbench exports custom tags correctly..
tag @e[tag=aj.friendliness_pellet_ring.root,tag=!friendliness-pellet-ring-initialized] add groupable
execute store result storage group id int 1 run scoreboard players get @s group.id
execute as @e[tag=aj.friendliness_pellet_ring.root,tag=!friendliness-pellet-ring-initialized] run function entity:group/copy with storage group
tag @e[tag=aj.friendliness_pellet_ring.root,tag=!friendliness-pellet-ring-initialized] add friendliness-pellet-ring
tag @e[tag=aj.friendliness_pellet_ring.root,tag=!friendliness-pellet-ring-initialized] add friendliness-pellet-ring-initialized

# Randomize initial yaw
execute store result entity @s Rotation[0] float 0.01 run random value 0..35999
execute store result score @s math.0 run data get entity @s Rotation[0] 100

# Remove Tags
tag @s remove attack-indicator-new
