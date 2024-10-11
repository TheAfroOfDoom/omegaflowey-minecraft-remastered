# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.speed.z = #attack-flies attack.speed.z

# Copy group id from indicator
function omegaflowey.entity:group/copy with storage group

# Face indicator (venus fly trap)
function omegaflowey.entity:group/start
teleport @s ~ ~ ~ facing entity @e[tag=attack-indicator,tag=flies,scores={group.id=0},limit=1]
function omegaflowey.entity:group/end

# Flatten pitch
execute at @s run teleport @s ~ ~ ~ ~ 0

# Remove tags
tag @s remove attack-bullet-new
