# Play eye sheen particles
particle minecraft:explosion ~ ~ ~ 0 0 0 10 1 force

playsound omega-flowey:attack.start hostile @a[team=player] ~ ~ ~ 3 1 1

# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-x-bullets-lower attack.clock.delay
scoreboard players operation @s attack.clock.length = #attack-x-bullets-lower attack.clock.length
scoreboard players operation @s attack.bullets = #attack-x-bullets-lower attack.bullets
scoreboard players operation @s attack.cone = #attack-x-bullets-lower attack.cone
scoreboard players operation @s attack.rate = #attack-x-bullets-lower attack.rate

# Remove Tags
tag @s remove attack-indicator-new
