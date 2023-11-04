## summons a single bullet and decrements `attack.bullets.remaining`

# attack.bullets.remaining = number of bullets left to summon
# attack.d-phi = angle between bullets
# attack.phi = angle to summon bullet at
# attack.theta = pitch to summon bullet at

# Toggle between dark-eye and bright-eye variants
scoreboard players operation @s math.0 = @s attack.bullets.remaining
scoreboard players operation @s math.0 %= #2 mathf.const
# TODO this needs to NOT be a distance check
execute if score @s math.0 matches 0 as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/apply_variant/dark
execute if score @s math.0 matches 1 as @e[tag=aj.lower_eye.root,sort=nearest,limit=1] run function animated_java:lower_eye/apply_variant/bright

# Summon bullet
$summon minecraft:item_display $(x) $(y) $(z) {CustomName:'"X-Bullets-Lower Bullet"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-bullet","attack-bullet-new","x-bullets-lower"], interpolation_duration: 1, teleport_duration: 1, item_display: "head", item: {id: "minecraft:quartz_block", Count: 1b, tag: {}}}

# Store pitch and yaw to latest bullet
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[0] float 1 run scoreboard players get @s attack.phi
execute store result entity @e[limit=1,tag=attack-bullet-new] Rotation[1] float 1 run scoreboard players get @s attack.theta

# Rotate yaw to be ready for next bullet
scoreboard players operation @s attack.phi -= @s attack.d-phi

# Decrement number of bullets left to summon
scoreboard players remove @s attack.bullets.remaining 1

# Remove "new" status of latest bullet
tag @e[tag=attack-bullet-new] remove attack-bullet-new
