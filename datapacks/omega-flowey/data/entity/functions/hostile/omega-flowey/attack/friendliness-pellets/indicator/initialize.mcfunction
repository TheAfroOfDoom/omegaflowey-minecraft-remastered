# TODO replace this sound
playsound minecraft:block.comparator.click hostile @a[team=player] ~ ~ ~ 3 1 1

# TODO summon blinking circle animation

# Inputted scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-friendliness-pellets attack.clock.delay

scoreboard players set @s attack.bullets.clock.i -1
scoreboard players set @s attack.bullets.count 0
scoreboard players operation @s attack.bullets.clock.delay = #attack-friendliness-pellets attack.bullets.clock.delay
scoreboard players operation @s attack.bullets.total = #attack-friendliness-pellets attack.bullets.total
scoreboard players operation @s attack.indicator.radius = #attack-friendliness-pellets attack.indicator.radius

# Calculated scores
scoreboard players set @s attack.d-phi 360
scoreboard players operation @s attack.d-phi /= @s attack.bullets.total

# Set group ID
function entity:group/set

# Randomize initial yaw
execute store result entity @s Rotation[0] float 0.01 run random value 0..35999
execute store result score @s math.0 run data get entity @s Rotation[0] 100

# Remove Tags
tag @s remove attack-indicator-new
