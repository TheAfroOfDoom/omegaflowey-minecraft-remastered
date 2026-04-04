function omegaflowey:entity/soul/shared/executor/initialize
tag @s add soul_4
data merge entity @s { CustomName: '"Soul 4 Executor"' }

# TODO(296): validate these soul parameters
scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #omegaflowey.soul.4.saved omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.4.touched omegaflowey.soul.flag 0

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.4 executor_uuid set from storage gu:main out
data modify storage omegaflowey:soul.4 active_player_uuid set from storage omegaflowey:bossfight active_player_uuid
data modify storage omegaflowey:soul.4 soul_model_uuid set from storage omegaflowey:bossfight soul_model_uuid

function omegaflowey:entity/directorial/boss_fight/vanilla/soul_origin/at { \
  command: 'function omegaflowey:entity/soul/soul_4/executor/initialize/summon_pans' \
}

# Play music
function omegaflowey:entity/soul/soul_4/executor/play_music
