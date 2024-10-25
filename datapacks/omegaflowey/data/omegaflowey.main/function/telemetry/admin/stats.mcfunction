execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:telemetry data.booth
execute store result score @s omegaflowey.math.1 run data get storage omegaflowey:telemetry data.bossfight

function omegaflowey.utils:log/self { text_component: '[ \
  { "text": "", "color": "aqua" }, \
  { "text": "Booth statistics:", "color": "light_purple", "bold": true }, \
  "\\n", \
\
  { "text": "entered booth: ", "color": "yellow" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_visitors", "objective": "omegaflowey.global.flag" } }, \
  { "text": " (distinct players: ", "color": "gold" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_distinct_visitors", "objective": "omegaflowey.global.flag" } }, \
  { "text": ")", "color": "gold" }, \
  "\\n", \
\
  { "text": "times joined queue: ", "color": "yellow" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_queue_joins", "objective": "omegaflowey.global.flag" } }, \
  { "text": " (distinct players: ", "color": "gold" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_distinct_queue_joins", "objective": "omegaflowey.global.flag" } }, \
  { "text": ")", "color": "gold" }, \
  "\\n", \
\
  { "text": "fights: ", "color": "yellow" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_fights", "objective": "omegaflowey.global.flag" } }, \
  { "text": " (distinct players: ", "color": "gold" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_distinct_fights", "objective": "omegaflowey.global.flag" } }, \
  { "text": ")", "color": "gold" }, \
  "\\n", \
\
  { "text": "wins: ", "color": "yellow" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_wins", "objective": "omegaflowey.global.flag" } }, \
  { "text": " (distinct players: ", "color": "gold" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_distinct_wins", "objective": "omegaflowey.global.flag" } }, \
  { "text": ")", "color": "gold" }, \
  "\\n", \
\
  { "text": "deaths: ", "color": "yellow" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_deaths", "objective": "omegaflowey.global.flag" } }, \
  { "text": " (distinct players: ", "color": "gold" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_distinct_deaths", "objective": "omegaflowey.global.flag" } }, \
  { "text": ")", "color": "gold" }, \
  "\\n", \
\
  { "text": "parkour finishes: ", "color": "yellow" }, \
  { "score": { "name": "#omegaflowey.telemetry.stats.total_distinct_parkour_finishes", "objective": "omegaflowey.global.flag" } }, \
  "\\n", \
\
  "\\n", \
\
  { "text": "booth telemetry pages: ", "color": "green" }, \
  { "score": { "name": "@s", "objective": "omegaflowey.math.0" } }, \
  "\\n", \
\
  { "text": "bossfight telemetry pages: ", "color": "green" }, \
  { "score": { "name": "@s", "objective": "omegaflowey.math.1" } }, \
\
  "" \
]'}
