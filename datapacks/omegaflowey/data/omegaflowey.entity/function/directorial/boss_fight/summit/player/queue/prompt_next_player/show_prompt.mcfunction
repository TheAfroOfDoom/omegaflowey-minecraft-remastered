function omegaflowey.main:telemetry/booth/add_tag { name: "player.queue.shown_prompt" }

scoreboard players set #omegaflowey.bossfight.has_player_been_prompted omegaflowey.global.flag 1

tag @s add omegaflowey.player.in_queue.prompted
scoreboard players set @s omegaflowey.player.trigger.bossfight.confirm 0
scoreboard players set @s omegaflowey.player.trigger.bossfight.deny 0
scoreboard players enable @s omegaflowey.player.trigger.bossfight.confirm
scoreboard players enable @s omegaflowey.player.trigger.bossfight.deny
data modify storage omegaflowey:bossfight player_queue_timeout_uuid set from storage omegaflowey:bossfight player_queue[0].player_uuid

# Start timeout
schedule function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/timeout 15s replace

function omegaflowey.utils:log/self { text_component: '[ \
  { \
    "text": "", \
    "color": "yellow", \
    "extra": [ \
      "The ", \
      { "text": "boss-fight ", "color": "aqua" }, \
      "is now ready for you. Click ", \
      { \
        "text": "", \
        "color": "gray", \
        "clickEvent": { \
          "action": "run_command", \
          "value": "/trigger omegaflowey.player.trigger.bossfight.confirm set 1" \
        }, \
        "extra": [ \
          "[", \
          { "text": "CONFIRM", "color": "dark_green" }, \
          "]" \
        ] \
      }, \
      " in the next ", \
      { "text": "15s ", "color": "light_purple" }, \
      "to be teleported to the arena:" \
    ] \
  } \
]'}

function omegaflowey.utils:log/self { text_component: '[ \
  { \
    "text": "", \
    "color": "gray", \
    "extra": [ \
      { \
        "text": "", \
        "clickEvent": { \
          "action": "run_command", \
          "value": "/trigger omegaflowey.player.trigger.bossfight.confirm set 1" \
        }, \
        "extra": [ \
          "[", \
          { "text": "CONFIRM", "color": "dark_green" }, \
          "]" \
        ] \
      }, \
      " | ", \
      { \
        "text": "", \
        "clickEvent": { \
          "action": "run_command", \
          "value": "/trigger omegaflowey.player.trigger.bossfight.deny set 1" \
        }, \
        "extra": [ \
          "[", \
          { "text": "DENY", "color": "red" }, \
          "]" \
        ] \
      } \
    ] \
  } \
]'}
