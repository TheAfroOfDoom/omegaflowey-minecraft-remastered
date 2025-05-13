# # scoreboard players set #omegaflowey.const.37 omegaflowey.math.const 37
# scoreboard players add #floweytest.tick omegaflowey.math.0 1
# scoreboard players add #floweytest.toggle omegaflowey.math.0 1
# execute if score #floweytest.toggle omegaflowey.math.0 matches 2 run return run scoreboard players reset #floweytest.toggle omegaflowey.math.0

# # tellraw @a [{"score": {"name": "#floweytest.tick", "objective": "omegaflowey.math.0"}}, ", ", {"score": {"name": "#floweytest.frame", "objective": "omegaflowey.math.0"}}]

# scoreboard players add #floweytest.frame omegaflowey.math.0 1
# scoreboard players operation #floweytest.frame omegaflowey.math.0 %= #omegaflowey.const.37 omegaflowey.math.const

# execute store result storage omegaflowey:test_temp idx int 1 run scoreboard players get #floweytest.frame omegaflowey.math.0

# function _:tick/as_root with storage omegaflowey:test_temp

# execute as @p[tag=is_test_playing] run function _:test_play/loop
