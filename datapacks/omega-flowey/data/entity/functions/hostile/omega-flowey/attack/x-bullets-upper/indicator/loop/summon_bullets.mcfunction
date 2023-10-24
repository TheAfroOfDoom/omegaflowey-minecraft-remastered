## recursive function with exit condition being attack.bullets == 0

# attack.bullets = number of bullets left to summon
# attack.d-phi = angle between bullets
# attack.phi = angle to summon bullet at
# attack.theta = pitch to summon bullet at

# Summon bullet
summon minecraft:armor_stand ~ ~ ~ {CustomName:'"X-Bullets-Upper Bullet"', DisabledSlots:4144959, Invisible:0, Invulnerable:1, Silent:1, Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-bullet","attack-bullet-new","x-bullets-upper"], Passengers:[{CustomName:'"X-Bullets-Upper Damager"', Duration:2147483627,Effects:[{Amplifier:3,Id:11,ShowParticles:0b,ShowIcon:0b},{Amplifier:1,Id:7,ShowParticles:0b,ShowIcon:0b},{Amplifier:0,Duration:20,Id:27,ShowParticles:0b,ShowIcon:0b}],id:"minecraft:area_effect_cloud",Particle:"block air",Radius:1.5f,ReapplicationDelay:1,Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-damager","x-bullets-upper"]}]}

# Store pitch and yaw to latest bullet
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[0] float 1 run scoreboard players get @s attack.phi
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[1] float 1 run scoreboard players get @s attack.theta

# Rotate yaw to be ready for next bullet
scoreboard players operation @s attack.phi -= @s attack.d-phi

# Decrement number of bullets left to summon
scoreboard players remove @s attack.bullets 1

# Remove "new" status of latest bullet
tag @e[tag=attack-bullet-new] remove attack-bullet-new

# Summon next bullet if attack.bullets > 0
execute unless entity @s[scores={attack.bullets=..0}] run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/summon_bullets
