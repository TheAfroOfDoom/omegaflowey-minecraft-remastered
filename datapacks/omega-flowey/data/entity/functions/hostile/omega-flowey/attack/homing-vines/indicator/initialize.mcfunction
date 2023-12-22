# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-homing-vines attack.indicator.clock.delay

scoreboard players set @s attack.bullets.count 0
scoreboard players operation @s attack.bullets.total = #attack-homing-vines attack.bullets.total

# Play blinking sound once
playsound omega-flowey:attack.homing-vines.blinking hostile @a ~ ~ ~ 3 1 1

# Randomize delta-x position to summon bullet at (x: player.Position.x, dx: [-15.00..15.00])
# TODO(41): validate this dx range
execute store result score @s attack.position.x run data get entity @s Pos[0] 100
execute store result score @s math.0 run random value -1500..1500
scoreboard players operation @s attack.position.x += @s math.0

# Bound `attack.position.x` within arena between x: [-21.00, 21.00]
data merge storage utils:math.max { a: -2100 }
execute store result storage utils:math.max b int 1 run scoreboard players get @s attack.position.x
function utils:math/max
execute store result score @s attack.position.x run data get storage utils:math.max out
data merge storage utils:math.min { a: 2100 }
execute store result storage utils:math.min b int 1 run scoreboard players get @s attack.position.x
function utils:math/min
execute store result score @s attack.position.x run data get storage utils:math.min out

# Randomize y position to summon bullet at (y: [34.00..40.00])
execute store result score @s attack.position.y run random value 3400..4000

# Set z position to summon bullet at
scoreboard players set @s attack.position.z -400

# Set group ID
function entity:group/set

# Summon blinking-lane
execute store result storage attack:homing-vines x float 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:homing-vines y float 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:homing-vines z float 0.01 run scoreboard players get @s attack.position.z
function entity:hostile/omega-flowey/attack/homing-vines/indicator/initialize/summon_blinking_lane with storage attack:homing-vines

# Remove tags
tag @s remove attack-indicator-new
