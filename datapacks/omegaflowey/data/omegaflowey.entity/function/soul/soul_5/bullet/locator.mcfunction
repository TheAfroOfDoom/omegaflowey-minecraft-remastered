function omegaflowey.entity:shared/locator/merge_data_to_utilsdamage
data modify storage omegaflowey:utils.damage source set value 'soul.5.bullet'
execute positioned ~ ~-1.5 ~ run function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
