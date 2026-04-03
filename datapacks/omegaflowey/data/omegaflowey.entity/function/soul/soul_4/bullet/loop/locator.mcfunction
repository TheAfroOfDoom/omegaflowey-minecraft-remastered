# delete bullet locators during post-SAVED
execute if score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 run return run kill @s

# ref radius =  21 => 21/16 blocks => 1.3125 blocks
data modify storage omegaflowey:utils.damage damage set value 2.0
data modify storage omegaflowey:utils.damage radius set value 1.4
data modify storage omegaflowey:utils.damage source set value 'soul.4.fire'

execute positioned ~ ~-0.5 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
execute positioned ~ ~-1.5 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
