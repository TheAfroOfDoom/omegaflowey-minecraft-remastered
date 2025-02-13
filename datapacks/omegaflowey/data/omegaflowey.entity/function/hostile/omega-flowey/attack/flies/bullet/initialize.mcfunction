# Set scores
scoreboard players set @s omegaflowey.attack.clock.i -1
scoreboard players operation @s omegaflowey.attack.speed.z = #omegaflowey.attack.flies omegaflowey.attack.speed.z

# Copy group id from indicator
function omegaflowey.entity:group/copy with storage omegaflowey:attack.flies

# Face indicator (venus fly trap)
function omegaflowey.entity:group/start
teleport @s ~ ~ ~ facing entity @e[tag=attack-indicator,tag=flies,scores={omegaflowey.group.id=0},limit=1]
function omegaflowey.entity:group/end

# Flatten pitch
execute at @s run teleport @s ~ ~ ~ ~ 0

# Remove tags
tag @s remove attack-bullet-new
