### (loop only)
scoreboard players remove #flowey.test_play.frame_duration omegaflowey.math.0 1
execute if score #flowey.test_play.frame_duration omegaflowey.math.0 matches 1.. run return 0

execute if score #flowey.test_play.period_idx omegaflowey.math.0 matches 5.. run return run \
  function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/test_play/end

## frame data
# frame idxs:      +0 +1 +0 -1 -2(q) -1 (x5)
# frame durations:  3  2  3  2  1     2
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 0 run scoreboard players set #flowey.test_play.idx_add omegaflowey.math.0 0
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 0 run scoreboard players set #flowey.test_play.frame_duration omegaflowey.math.0 3

execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 1 run scoreboard players set #flowey.test_play.idx_add omegaflowey.math.0 1
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 1 run scoreboard players set #flowey.test_play.frame_duration omegaflowey.math.0 2

execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 2 run scoreboard players set #flowey.test_play.idx_add omegaflowey.math.0 0
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 2 run scoreboard players set #flowey.test_play.frame_duration omegaflowey.math.0 3

execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 3 run scoreboard players set #flowey.test_play.idx_add omegaflowey.math.0 -1
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 3 run scoreboard players set #flowey.test_play.frame_duration omegaflowey.math.0 2

execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 4 run scoreboard players set #flowey.test_play.idx_add omegaflowey.math.0 -2
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 4 run scoreboard players set #flowey.test_play.frame_duration omegaflowey.math.0 1

execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 5 run scoreboard players set #flowey.test_play.idx_add omegaflowey.math.0 -1
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 5 run scoreboard players set #flowey.test_play.frame_duration omegaflowey.math.0 2

# apply next frame
scoreboard players operation #flowey.test_play.current_frame omegaflowey.math.0 = #flowey.test_play.base_frame omegaflowey.math.0
scoreboard players operation #flowey.test_play.current_frame omegaflowey.math.0 += #flowey.test_play.idx_add omegaflowey.math.0

scoreboard players operation #flowey.test_play.current_frame omegaflowey.math.0 %= #omegaflowey.const.37 omegaflowey.math.const

execute store result storage omegaflowey:test_temp idx int 1 run \
  scoreboard players get #flowey.test_play.current_frame omegaflowey.math.0

function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/test_play/loop/as_root with storage omegaflowey:test_temp

scoreboard players add #flowey.test_play.sequence_idx omegaflowey.math.0 1
execute if score #flowey.test_play.sequence_idx omegaflowey.math.0 matches 6.. run \
  function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/test_play/next_sequence
