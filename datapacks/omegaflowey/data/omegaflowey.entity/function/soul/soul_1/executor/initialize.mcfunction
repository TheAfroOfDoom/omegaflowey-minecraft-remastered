function omegaflowey.entity:soul/shared/executor/initialize
data modify entity @s CustomName set value '"Soul 1 Executor"'
tag @s add soul_1

scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #omegaflowey.soul.1.saved omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.1.touched omegaflowey.soul.flag 0

scoreboard players set #omegaflowey.soul.1.bullets_so_far omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.1.indicator.speed omegaflowey.soul.velocity 190

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.1 executor_uuid set from storage gu:main out
data modify storage omegaflowey:soul.1 active_player_uuid set from storage omegaflowey:bossfight active_player_uuid
data modify storage omegaflowey:soul.1 soul_model_uuid set from storage omegaflowey:bossfight soul_model_uuid

function omegaflowey.entity:soul/soul_1/executor/play_music
