function entity:shared/locator/merge_data_to_utilsdamage
execute if score #soul_5.saved soul.flag matches 0 positioned ~ ~-1 ~ run \
  function entity:utils/damage with storage utils:damage
