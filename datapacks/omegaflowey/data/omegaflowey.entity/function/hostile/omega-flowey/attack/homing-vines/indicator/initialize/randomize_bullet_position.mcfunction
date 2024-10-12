# Randomize delta-x-position to summon bullet at (x: player.Position.x, dx: [-15.00..15.00])
# TODO(41): validate this dx range
execute store result score @s attack.position.x run data get entity @s Pos[0] 100
execute store result score @s math.0 run random value -1500..1500
scoreboard players operation @s attack.position.x += @s math.0

# Bound `attack.position.x` within arena
# lower-bound
scoreboard players set @s math.0 -1800
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.origin.x omegaflowey.global.flag
execute store result storage utils:math.max a int 1 run scoreboard players get @s math.0
execute store result storage utils:math.max b int 1 run scoreboard players get @s attack.position.x
function omegaflowey.utils:math/max
execute store result score @s attack.position.x run data get storage utils:math.max out
# upper-bound
scoreboard players set @s math.0 1800
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.origin.x omegaflowey.global.flag
execute store result storage utils:math.min a int 1 run scoreboard players get @s math.0
execute store result storage utils:math.min b int 1 run scoreboard players get @s attack.position.x
function omegaflowey.utils:math/min
execute store result score @s attack.position.x run data get storage utils:math.min out

# Randomize y-position to summon bullet at
execute store result score @s attack.position.y run random value -300..300
scoreboard players operation @s attack.position.y += #omega-flowey.bossfight.summit.origin.y omegaflowey.global.flag

# Set z-position to summon bullet at
scoreboard players set @s attack.position.z -850
scoreboard players operation @s attack.position.z += #omega-flowey.bossfight.summit.origin.z omegaflowey.global.flag

execute store result storage attack:homing-vines x float 0.01 run scoreboard players get @s attack.position.x
execute store result storage attack:homing-vines y float 0.01 run scoreboard players get @s attack.position.y
execute store result storage attack:homing-vines z float 0.01 run scoreboard players get @s attack.position.z
