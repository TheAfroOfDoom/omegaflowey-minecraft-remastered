# t: tick relative to basetick
# u: player uuid

# n: name
data modify storage omegaflowey:telemetry schema_booth_n set value { \
  "root.enter": 0, \
  "root.exit": 1, \
  "room.underground.enter": 2, \
  "room.underground.exit": 3, \
  "room.underground.exit.by_hallway": 4, \
  "room.spectator_box.enter": 5, \
  "room.spectator_box.exit": 6, \
  "player.interact.join_queue": 7, \
  "player.interact.join_queue_2": 8, \
  "player.interact.github_description_link": 9, \
  "player.interact.feedback_form_link": 10, \
  "player.interact.animated_java_link": 11, \
  "player.interact.back_cave_github_link": 12, \
}
