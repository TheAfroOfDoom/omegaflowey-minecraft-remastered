function omegaflowey.entity:soul/shared/executor/initialize
tag @s add soul_2
data merge entity @s { CustomName: '"Soul 2 Executor"' }

# Set scores
# TODO(164): validate these soul parameters
scoreboard players set @s omegaflowey.soul.clock.i -1

# length this soul event will last if the act button is never grabbed
scoreboard players set @s omegaflowey.soul.executor.clock.length 365

scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #omegaflowey.soul.2.saved omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.2.touched omegaflowey.soul.flag 0

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.2 executor_uuid set from storage gu:main out

# Play music
function omegaflowey.entity:soul/soul_2/executor/play_music
