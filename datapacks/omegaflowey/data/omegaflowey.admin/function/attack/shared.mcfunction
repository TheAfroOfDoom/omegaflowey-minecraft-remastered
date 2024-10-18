scoreboard players set #omegaflowey.admin.is_active_player omegaflowey.global.flag 0

function gu:generate
function omegaflowey.admin:attack/shared/macro with storage omegaflowey:bossfight

execute if score #omegaflowey.admin.is_active_player omegaflowey.global.flag matches 0 run \
  function omegaflowey.utils:log/self { text_component: '[ \
    { "text": "", "color": "red" }, \
    "Some attacks won\'t function properly if you don\'t have the bossfight tag.\\n", \
    "Run this function to fix: ", \
    { \
      "text": "set_active_player", \
      "color": "yellow", \
      "clickEvent": { \
        "action": "suggest_command", \
        "value": "/function omegaflowey.admin:set_active_player" \
      } \
    } \
  ]' \
}
