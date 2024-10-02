## expects a text component in the `text_component` parameter
# https://minecraft.wiki/w/Raw_JSON_text_format
$execute as @a unless entity @s[tag=!omegaflowey.admin,name=!TheAfroOfDoom] run \
  function utils:log/self { text_component: ' \
    [ \
      "[", \
      {"text":"DEV","color":"light_purple"}, \
      "] ", \
      $(text_component) \
    ]' \
  }
