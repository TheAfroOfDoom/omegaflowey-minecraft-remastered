execute unless score #omegaflowey.soul.5.saved omegaflowey.soul.flag matches 0 run return 0

function omegaflowey.entity:shared/locator/merge_data_to_utilsdamage
data modify storage omegaflowey:utils.damage source set value 'soul.5.indicator'
execute positioned ~ ~-1 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
