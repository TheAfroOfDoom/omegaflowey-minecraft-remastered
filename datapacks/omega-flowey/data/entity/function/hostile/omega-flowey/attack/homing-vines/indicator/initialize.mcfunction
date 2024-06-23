# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-homing-vines attack.indicator.clock.delay

scoreboard players set @s attack.bullets.count 0
scoreboard players operation @s attack.bullets.total = #attack-homing-vines attack.bullets.total

# Summon indicator in a range around the player
function entity:hostile/omega-flowey/attack/homing-vines/indicator/initialize/randomize_indicator_position

function entity:hostile/omega-flowey/attack/homing-vines/indicator/initialize/randomize_bullet_position

# Summon blinking-lane
execute at @s run function entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/summon with storage attack:homing-vines

# Remove tags
tag @s remove attack-indicator-new
