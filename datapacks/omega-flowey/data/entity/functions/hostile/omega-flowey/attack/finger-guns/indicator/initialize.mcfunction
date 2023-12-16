# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-finger-guns attack.indicator.clock.delay

scoreboard players operation @s attack.indicator.clock.length = #attack-finger-guns attack.indicator.clock.length

# Set group ID
function entity:group/set

# Remove tags
tag @s remove attack-indicator-new
