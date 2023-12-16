# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-finger-guns attack.indicator.clock.delay

scoreboard players operation @s attack.indicator.clock.length = #attack-finger-guns attack.indicator.clock.length

# Randomize position we spawn at
function entity:hostile/omega-flowey/attack/finger-guns/indicator/initialize/randomize_position

# Set group ID
function entity:group/set

# Remove tags
tag @s remove attack-indicator-new
