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
  'player.queue.join': 13, \
  'player.queue.shown_prompt': 14, \
  'player.queue.confirm': 15, \
  'player.queue.deny': 16, \
  'player.queue.timeout': 17, \
  'player.queue.confirm.after_delay': 18, \
  'player.rejoin.was_in_bossfight': 19, \
  'player.rejoin.was_in_queue': 20, \
  'room.underground.parkour.start.enter': 21, \
  'room.underground.parkour.before_pillar.enter': 22, \
  'room.underground.parkour.behind_pillar.enter': 23, \
  'room.underground.parkour.south_wall.enter': 24, \
  'room.underground.parkour.south_glow_vines.enter': 25, \
  'room.underground.parkour.final_vines.enter': 26, \
  'room.underground.parkour.before_final_jump.enter': 27, \
  'room.underground.parkour.finish.enter': 28, \
  'player.shown_feedback_link.won_fight': 29, \
}
