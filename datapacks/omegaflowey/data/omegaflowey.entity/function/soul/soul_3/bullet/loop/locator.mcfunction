execute if score #omegaflowey.soul.3.saved omegaflowey.soul.flag matches 1 run return run \
  function omegaflowey.entity:soul/soul_3/bullet/loop/locator/check_heal

# ref width =   36 => 36/16 blocks => 2.25 blocks
# ref height =  28 => 28/16 blocks => 1.75 blocks
data modify storage omegaflowey:utils.damage damage set value 2.0
data modify storage omegaflowey:utils.damage radius set value 1.6
data modify storage omegaflowey:utils.damage source set value 'soul.3.word'

execute positioned ~ ~-0.5 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
execute positioned ~ ~-1.5 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
