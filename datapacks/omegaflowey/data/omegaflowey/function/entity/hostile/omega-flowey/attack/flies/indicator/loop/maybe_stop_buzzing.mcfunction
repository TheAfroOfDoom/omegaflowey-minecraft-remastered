# Stop buzzing sound (if this is the only indicator active)
# flag == "does other indicator exist"
execute if entity @s[tag=is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/check_exists with storage omegaflowey:attack.flies.nonflipped
execute if entity @s[tag=!is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/check_exists with storage omegaflowey:attack.flies.flipped

execute if score @s omegaflowey.attack.flag matches 0 run \
  function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: \
    'stopsound @s hostile omega-flowey:attack.flies.buzzing' \
  }
