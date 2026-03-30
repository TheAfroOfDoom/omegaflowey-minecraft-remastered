function omegaflowey.entity:soul/shared/executor/initialize
tag @s add soul_4
data merge entity @s { CustomName: '"Soul 4 Executor"' }

# TODO(296): validate these soul parameters
scoreboard players reset @s omegaflowey.soul.clock.touched_act_button
scoreboard players set #omegaflowey.soul.4.saved omegaflowey.soul.flag 0
scoreboard players set #omegaflowey.soul.4.touched omegaflowey.soul.flag 0

# these are decrementing clocks
scoreboard players set #omegaflowey.soul.4.row.0 omegaflowey.soul.clock.i 13
scoreboard players set #omegaflowey.soul.4.row.1 omegaflowey.soul.clock.i 27
scoreboard players set #omegaflowey.soul.4.row.2 omegaflowey.soul.clock.i 67
scoreboard players set #omegaflowey.soul.4.row.4 omegaflowey.soul.clock.i 20
scoreboard players set #omegaflowey.soul.4.row.4 omegaflowey.soul.clock.i 33
scoreboard players set #omegaflowey.soul.4.row.5 omegaflowey.soul.clock.i 53
scoreboard players set #omegaflowey.soul.4.row.6 omegaflowey.soul.clock.i 70

scoreboard players set #omegaflowey.soul.4.row.1 omegaflowey.soul.indicator.bullets.total 0

scoreboard players set #omegaflowey.soul.4.word.shake_frame_idx omegaflowey.soul.clock.animation -1

# Store this UUID to a global storage for later reference
function gu:generate
data modify storage omegaflowey:soul.4 executor_uuid set from storage gu:main out
data modify storage omegaflowey:soul.4 active_player_uuid set from storage omegaflowey:bossfight active_player_uuid
data modify storage omegaflowey:soul.4 soul_model_uuid set from storage omegaflowey:bossfight soul_model_uuid

function omegaflowey.entity:directorial/boss_fight/vanilla/soul_origin/at { \
  command: 'function omegaflowey.entity:soul/soul_4/executor/initialize/summon_pans' \
}

# Play music
function omegaflowey.entity:soul/soul_4/executor/play_music
