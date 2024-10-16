function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"Homing-Vines Indicator"'

# Add tags
tag @s add homing-vines

# Set scores
scoreboard players operation @s omegaflowey.attack.clock.i -= #omegaflowey.attack.homing-vines omegaflowey.attack.indicator.clock.delay

scoreboard players set @s omegaflowey.attack.bullets.count 0
scoreboard players operation @s omegaflowey.attack.bullets.total = #omegaflowey.attack.homing-vines omegaflowey.attack.bullets.total

# Summon indicator in a range around the player
function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/indicator/initialize/randomize_indicator_position

function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/indicator/initialize/randomize_bullet_position

# Summon blinking-lane
execute at @s run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/summon with storage omegaflowey:attack.homing-vines
