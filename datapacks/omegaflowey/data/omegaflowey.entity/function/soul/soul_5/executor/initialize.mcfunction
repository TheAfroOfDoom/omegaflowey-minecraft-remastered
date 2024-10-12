function omegaflowey.entity:soul/shared/executor/initialize

data modify entity @s CustomName set value '"Soul 5 Executor"'

# Set scores
scoreboard players operation @s omegaflowey.soul.executor.clock.length = #omegaflowey.soul.5 omegaflowey.soul.executor.clock.length

scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #omegaflowey.soul.5.saved omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.5.touched omegaflowey.soul.flag 0

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.5 executor_uuid set from storage gu:main out

data modify storage omegaflowey:soul.5 soul_model_uuid set from storage omegaflowey:bossfight soul_model_uuid

# Add tags
tag @s add soul_5

# Play music
function omegaflowey.entity:soul/soul_5/executor/play_music
