# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.indicator.clock.length = #attack-bomb attack.indicator.clock.length

# Remove tags
tag @s remove attack-indicator-new
