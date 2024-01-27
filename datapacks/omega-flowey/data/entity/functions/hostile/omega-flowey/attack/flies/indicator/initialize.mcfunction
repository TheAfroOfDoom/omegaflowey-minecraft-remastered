# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-flies attack.indicator.clock.delay

scoreboard players operation @s attack.bullets.remaining = #attack-flies attack.bullets.total
scoreboard players operation @s attack.indicator.rate = #attack-flies attack.indicator.rate

execute store result score @s math.0 run data get entity @s Pos[0] 1
execute if score @s math.0 matches ..0 run tag @s add is_flipped

# Set group ID
function entity:group/set

# Remove tags
tag @s remove attack-indicator-new
