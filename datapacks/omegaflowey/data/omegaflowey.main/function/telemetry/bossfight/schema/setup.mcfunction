## gamemode
# 0: survival
# 1: creative
# 2: adventure
# 3: spectator

## name
# TODO maybe vanilla map telemetry? unlikely though
data modify storage omegaflowey:telemetry schema_bossfight_name set value { \
  "root.start": 0, \
  "root.end": 1, \
  "bossfight.summit.start": 2, \
  "bossfight.summit.end": 3, \
  "bossfight.phase.cutscene.start": 4, \
  "bossfight.phase.cutscene.end": 5, \
  "bossfight.phase.attack.start": 6, \
  "bossfight.phase.attack.end": 7, \
  "bossfight.phase.warn.start": 8, \
  "bossfight.phase.warn.end": 9, \
  "bossfight.phase.soul.start": 10, \
  "bossfight.phase.soul.end": 11, \
  "cutscene.intro.start": 12, \
  "cutscene.intro.end": 13, \
  "cutscene.intro.turn_on_screen": 14, \
  "cutscene.intro.laugh.start": 15, \
  "cutscene.intro.laugh.end": 16, \
  "player.damage": 17, \
  "attack.bomb.start": 18, \
  "attack.bomb.end": 19, \
  "attack.dentata_snakes.start": 20, \
  "attack.dentata_snakes.end": 21, \
  "attack.finger_guns.start": 22, \
  "attack.finger_guns.end": 23, \
  "attack.friendliness_pellets.start": 24, \
  "attack.friendliness_pellets.end": 25, \
  "attack.homing_vines.start": 26, \
  "attack.homing_vines.end": 27, \
  "attack.x_bullets_lower.start": 28, \
  "attack.x_bullets_lower.end": 29, \
  "attack.x_bullets_upper.start": 30, \
  "attack.x_bullets_upper.end": 31, \
  "soul.act_button_summon": 32, \
  "soul.touch": 33, \
  "soul.saved": 34, \
  "player.heal": 35, \
}

## bossfight.summit.end data
# h: player_hit_count
# s: stop_reason

## bossfight.phase.attack.start data
## bossfight.phase.cutscene.start data
## bossfight.phase.soul.start data
## bossfight.phase.warn.start data
# i: phase_index

## player.damage data
# d: damage
# g: player_gamemode
# s: source

## player.heal data
# a: amount

data modify storage omegaflowey:telemetry schema_bossfight_damage_source set value { \
  "x_bullets_lower.bullet": 0, \
  "x_bullets_upper.bullet": 1, \
  "homing_vines.bullet": 2, \
  "friendliness_pellets.bullet": 3, \
  "bomb.bullet": 4, \
  "dentata_snakes.bullet": 5, \
  "finger_guns.bullet": 6, \
  "soul.5.bullet": 7, \
}
