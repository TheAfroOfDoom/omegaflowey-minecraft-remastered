data modify storage omegaflowey:utils.damage damage set value 2.0
data modify storage omegaflowey:utils.damage radius set value 1.0
data modify storage omegaflowey:utils.damage source set value 'soul.2.star'

execute positioned ~ ~-1.5 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
