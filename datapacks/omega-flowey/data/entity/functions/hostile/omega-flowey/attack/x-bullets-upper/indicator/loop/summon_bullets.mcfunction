## recursive function with exit condition being `attack.bullets.remaining` == 0

# attack.bullets.remaining = number of bullets left to summon
# attack.d-phi = angle between bullets
# attack.phi = angle to summon bullet at
# attack.theta = pitch to summon bullet at

# Summon bullet
$summon minecraft:item_display $(x) $(y) $(z) {CustomName:'"X-Bullets-Upper Bullet"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-bullet","attack-bullet-new","x-bullets-upper"], interpolation_duration: 1, teleport_duration: 1, item_display: "head", item: {id: "minecraft:quartz_block", Count: 1b, tag: {}}}

# Store pitch and yaw to latest bullet
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[0] float 1 run scoreboard players get @s attack.phi
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[1] float 1 run scoreboard players get @s attack.theta

# Rotate yaw to be ready for next bullet
scoreboard players operation @s attack.phi -= @s attack.d-phi

# Decrement number of bullets left to summon
scoreboard players remove @s attack.bullets.remaining 1

# Remove "new" status of latest bullet
tag @e[tag=attack-bullet-new] remove attack-bullet-new

# Summon next bullet if `attack.bullets.remaining` > 0
execute unless entity @s[scores={attack.bullets.remaining=..0}] run function entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/summon_bullets with storage aj:bone.position
