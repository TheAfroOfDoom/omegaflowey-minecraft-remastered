function omegaflowey.entity:soul/shared/executor/initialize
tag @s add soul_3
data merge entity @s { CustomName: '"Soul 3 Executor"' }

# Set scores
# TODO(296): validate these soul parameters
scoreboard players set @s omegaflowey.soul.clock.i -1

scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #omegaflowey.soul.3.saved omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.3.touched omegaflowey.soul.flag 0

scoreboard players set #omegaflowey.soul.3.bullet.speed omegaflowey.soul.velocity -40
scoreboard players set #omegaflowey.soul.3.slow_down omegaflowey.soul.flag 0

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.3 executor_uuid set from storage gu:main out
data modify storage omegaflowey:soul.3 active_player_uuid set from storage omegaflowey:bossfight active_player_uuid
data modify storage omegaflowey:soul.3 soul_model_uuid set from storage omegaflowey:bossfight soul_model_uuid

# Play music
function omegaflowey.entity:soul/soul_3/executor/play_music
