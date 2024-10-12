# Set scores
scoreboard players set @s omegaflowey.attack.clock.i -1
scoreboard players operation @s omegaflowey.attack.clock.i -= #omegaflowey.attack.flies omegaflowey.attack.indicator.clock.delay

scoreboard players operation @s omegaflowey.attack.bullets.remaining = #omegaflowey.attack.flies omegaflowey.attack.bullets.total
scoreboard players operation @s omegaflowey.attack.indicator.rate = #omegaflowey.attack.flies omegaflowey.attack.indicator.rate

# Store if this is a flipped indicator (across x-axis) or not
execute store result score @s omegaflowey.math.0 run data get entity @s Pos[0] 1
execute if score @s omegaflowey.math.0 matches ..0 run tag @s add is_flipped

# Set group ID
function omegaflowey.entity:group/set

# Play sound
playsound omega-flowey:attack.flies.summon hostile @a ~ ~ ~ 5 1 1

# Remove tags
tag @s remove attack-indicator-new
