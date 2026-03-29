function omegaflowey.entity:soul/shared/bullet/initialize
tag @s add soul_4
data merge entity @s { CustomName: "'Soul 4 Shoe'" }

# track what direction this word will move
execute if score #omegaflowey.soul.4.summon_word_on_east omegaflowey.soul.flag matches 1 run \
  tag @s add is_east
