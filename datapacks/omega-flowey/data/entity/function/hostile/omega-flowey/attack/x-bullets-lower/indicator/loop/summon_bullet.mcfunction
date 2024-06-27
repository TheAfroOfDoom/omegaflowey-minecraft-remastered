## summons a single bullet and decrements `attack.bullets.remaining`

# attack.bullets.remaining = number of bullets left to summon
# attack.d-phi = angle between bullets
# attack.phi = angle to summon bullet at
# attack.theta = pitch to summon bullet at

# Toggle between dark-eye and bright-eye variants
scoreboard players operation @s math.0 = @s attack.bullets.remaining
scoreboard players operation @s math.0 %= #2 mathf.const
# TODO(47): this needs to NOT be a distance check
execute if score @s math.0 matches 0 as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/variants/dark/apply
execute if score @s math.0 matches 1 as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/variants/bright/apply

# Summon bullet
$execute positioned $(x) $(y) $(z) run function animated_java:projectile_star/summon { args: {} }

# Store pitch and yaw to latest bullet
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[0] float 1 run scoreboard players get @s attack.phi
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[1] float 1 run scoreboard players get @s attack.theta

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/x-bullets-lower/bullet/initialize

# Rotate yaw to be ready for next bullet
scoreboard players operation @s attack.phi -= @s attack.d-phi

# Decrement number of bullets left to summon
scoreboard players remove @s attack.bullets.remaining 1
