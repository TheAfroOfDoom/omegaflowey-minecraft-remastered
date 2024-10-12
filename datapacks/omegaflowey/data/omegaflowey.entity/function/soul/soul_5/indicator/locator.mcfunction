function omegaflowey.entity:shared/locator/merge_data_to_utilsdamage
execute if score #omegaflowey.soul.5.saved omegaflowey.soul.flag matches 0 positioned ~ ~-1 ~ run \
  function omegaflowey.entity:utils/damage with storage omegaflowey:utils.damage
