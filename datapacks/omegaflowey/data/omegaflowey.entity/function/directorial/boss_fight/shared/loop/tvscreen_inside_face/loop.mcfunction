### (loop only)
scoreboard players remove #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 1
execute if score #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 matches 1.. run return 0

execute if score #omegaflowey.tvscreen_inside_face.period_idx omegaflowey.math.0 matches 5.. run return run \
  function omegaflowey.entity:directorial/boss_fight/shared/loop/tvscreen_inside_face/end \
    with storage omegaflowey:bossfight

## frame data
# frame idxs:      +0 +1 +0 -1 -2(q) -1 (x5)
# frame durations:  3  2  3  2  1     2
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 0 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.idx_add omegaflowey.math.0 0
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 0 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 3

execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 1 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.idx_add omegaflowey.math.0 1
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 1 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 2

execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 2 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.idx_add omegaflowey.math.0 0
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 2 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 3

execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 3 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.idx_add omegaflowey.math.0 -1
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 3 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 2

execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 4 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.idx_add omegaflowey.math.0 -2
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 4 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 1

execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 5 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.idx_add omegaflowey.math.0 -1
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 5 run \
  scoreboard players set #omegaflowey.tvscreen_inside_face.frame_duration omegaflowey.math.0 2

# apply next frame
scoreboard players operation \
  #omegaflowey.tvscreen_inside_face.current_frame omegaflowey.math.0 = \
  #omegaflowey.tvscreen_inside_face.base_frame omegaflowey.math.0
scoreboard players operation \
  #omegaflowey.tvscreen_inside_face.current_frame omegaflowey.math.0 += \
  #omegaflowey.tvscreen_inside_face.idx_add omegaflowey.math.0

scoreboard players operation \
  #omegaflowey.tvscreen_inside_face.current_frame omegaflowey.math.0 %= \
  #omegaflowey.const.37 omegaflowey.math.const

execute store result storage omegaflowey:bossfight tvscreen_inside_face_idx int 1 run \
  scoreboard players get #omegaflowey.tvscreen_inside_face.current_frame omegaflowey.math.0

function omegaflowey.entity:directorial/boss_fight/shared/loop/tvscreen_inside_face/loop/as_root \
  with storage omegaflowey:bossfight

scoreboard players add #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 1
execute if score #omegaflowey.tvscreen_inside_face.sequence_idx omegaflowey.math.0 matches 6.. run \
  function omegaflowey.entity:directorial/boss_fight/shared/loop/tvscreen_inside_face/next_sequence
