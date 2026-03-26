function omegaflowey.entity:soul/shared/bullet/initialize
tag @s add soul_3
data merge entity @s { CustomName: "'Soul 3 Shoe'" }

# TODO randomize what word this is?

# track what direction this word will move
execute if score #omegaflowey.soul.3.summon_word_on_east omegaflowey.soul.flag matches 1 run \
  tag @s add is_east
