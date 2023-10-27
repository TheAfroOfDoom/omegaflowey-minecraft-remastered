# Play eye sheen particles
particle minecraft:explosion ~ ~ ~ 0 0 0 10 1 force

playsound omega-flowey:attack.start hostile @a[team=player] ~ ~ ~ 3 1 1

# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-x-bullets-upper attack.clock.delay
scoreboard players operation @s attack.clock.length = #attack-x-bullets-upper attack.clock.length
scoreboard players operation @s attack.bullets = #attack-x-bullets-upper attack.bullets
scoreboard players operation @s attack.cone = #attack-x-bullets-upper attack.cone
scoreboard players operation @s attack.rate = #attack-x-bullets-upper attack.rate

# Remove Tags
tag @s remove attack-indicator-new
