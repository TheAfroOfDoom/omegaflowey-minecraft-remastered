# Play eye sheen particles
particle minecraft:explosion ~ ~ ~ 0 0 0 10 1 force

playsound omega-flowey:attack.x-bullets.start hostile @a ~ ~ ~ 3 1 1

# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-x-bullets-lower attack.clock.delay

scoreboard players set @s attack.bullets.clock.i -1
scoreboard players operation @s attack.bullets.clock.delay = #attack-x-bullets-lower attack.bullets.clock.delay
scoreboard players operation @s attack.bullets.total = #attack-x-bullets-lower attack.bullets.total
scoreboard players operation @s attack.clock.length = #attack-x-bullets-lower attack.clock.length
scoreboard players operation @s attack.cone = #attack-x-bullets-lower attack.cone

# Remove Tags
tag @s remove attack-indicator-new
