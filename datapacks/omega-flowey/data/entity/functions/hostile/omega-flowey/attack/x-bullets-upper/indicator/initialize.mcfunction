# Set scores
scoreboard players set @s attack.clock -1
scoreboard players operation @s attack.bullets = #attack-x-bullets-upper attack.bullets
scoreboard players operation @s attack.cone = #attack-x-bullets-upper attack.cone
scoreboard players operation @s attack.length = #attack-x-bullets-upper attack.length
scoreboard players operation @s attack.rate = #attack-x-bullets-upper attack.rate

# Remove Tags
tag @s remove attack-indicator-new
