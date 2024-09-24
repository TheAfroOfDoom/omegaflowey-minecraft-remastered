function entity:hostile/omega-flowey/summon/remove_preexisting_models
execute at @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin.boss_fight] rotated ~180 ~ run \
  function entity:hostile/omega-flowey/summon/relative
function entity:hostile/omega-flowey/animate
