function omegaflowey.main:telemetry/booth/add_tag { name: "player.shown_feedback_link.won_fight" }

function omegaflowey.utils:log/self { text_component: [ \
  "", \
  { "text": "Thanks for playing our ", "color": "aqua" }, \
  { "text": "demo", "color": "gold" }, \
  { "text": "! ", "color": "aqua" }, \
  { "translate": ":trophy:" } \
]}

function omegaflowey.utils:log/self { text_component: [ \
  { \
    "text": "", "extra": [ \
      { "text": "We'd love if you shared your ", "color": "aqua" }, \
      { "text": "feedback ", "color": "yellow" }, \
      { "translate": ":heart:" }, \
      " ", \
      { "text": "[link]", "color": "light_purple", "underlined": true } \
    ], \
    "clickEvent": { \
      "action": "open_url", \
      "value": "https://forms.gle/AkksowKZeQYoZ2z46" \
    } \
  } \
]}
