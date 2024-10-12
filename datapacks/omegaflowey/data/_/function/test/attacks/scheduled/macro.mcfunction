$function omegaflowey.utils:log { text_component: \
  '[ { "text": "Running: attack/$(name)" } ]' \
}
$execute at @p[tag=omegaflowey.player.fighting_flowey] run function _:attack/$(name)
