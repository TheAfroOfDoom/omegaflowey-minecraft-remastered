# Stop buzzing sound (if this is the only indicator active)
# flag == "does other indicator exist"
execute if entity @s[tag=is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/check_exists with storage omegaflowey:attack.flies.nonflipped
execute if entity @s[tag=!is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/check_exists with storage omegaflowey:attack.flies.flipped

# TODO
execute if score @s omegaflowey.attack.flag matches 0 run stopsound @a hostile omega-flowey:attack.flies.buzzing
