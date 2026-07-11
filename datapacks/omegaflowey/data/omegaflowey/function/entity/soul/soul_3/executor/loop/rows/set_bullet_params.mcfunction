execute store result score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag run \
  random value 0..1

# dx +/- 10 blocks from x-origin
execute if score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag matches 0 run \
  data modify storage omegaflowey:soul.3 x set value -24.5f
execute if score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag matches 1 run \
  data modify storage omegaflowey:soul.3 x set value -4.5f
# execute if score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag matches 0 run \
#   data modify storage omegaflowey:soul.3 x set value -9.5f
# execute if score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag matches 1 run \
#   data modify storage omegaflowey:soul.3 x set value 10.5f

execute store result score @s omegaflowey.math.0 run random value 0..2
execute if score @s omegaflowey.math.0 matches 0 run data modify storage omegaflowey:soul.3 idx set value 0
execute if score @s omegaflowey.math.0 matches 1 run data modify storage omegaflowey:soul.3 idx set value 5
execute if score @s omegaflowey.math.0 matches 2 run data modify storage omegaflowey:soul.3 idx set value 8
# execute store result storage omegaflowey:soul.3 idx int 1 run random value 0..14
# data modify storage omegaflowey:soul.3 idx set value 14

# if words have started shaking, start animation for any new words that are summoned
data modify storage omegaflowey:soul.3 frame set value -1
execute if score #omegaflowey.soul.3.word.shake_frame_idx omegaflowey.soul.clock.animation matches 0.. \
  store result storage omegaflowey:soul.3 frame int 1 run \
  scoreboard players get #omegaflowey.soul.3.word.shake_frame_idx omegaflowey.soul.clock.animation
