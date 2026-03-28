execute store result score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag run \
  random value 0..1

execute if score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag matches 0 run \
  data modify storage omegaflowey:soul.3 x set value -9.5f
execute if score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag matches 1 run \
  data modify storage omegaflowey:soul.3 x set value 10.5f

# TODO(297): finish the remaining soul-3 word models
execute store result storage omegaflowey:soul.3 idx int 1 run random value 8..9
