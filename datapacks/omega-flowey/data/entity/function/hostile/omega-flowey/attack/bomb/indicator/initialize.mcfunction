data modify entity @s CustomName set value '"Bomb Indicator"'

# Set scores
scoreboard players set @s attack.clock.i -1

scoreboard players operation @s attack.indicator.clock.length = #attack-bomb attack.indicator.clock.length

# Add tags
tag @s add omega-flowey-remastered
tag @s add groupable
tag @s add hostile
tag @s add omega-flowey
tag @s add attack
tag @s add attack-indicator
tag @s add bomb
