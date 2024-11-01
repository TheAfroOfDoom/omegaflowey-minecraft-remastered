export enum BossfightEventName {
  'root.start' = 0,
  'root.end' = 1,
  'bossfight.summit.start' = 2,
  'bossfight.summit.end' = 3,
  'bossfight.phase.cutscene.start' = 4,
  'bossfight.phase.cutscene.end' = 5,
  'bossfight.phase.attack.start' = 6,
  'bossfight.phase.attack.end' = 7,
  'bossfight.phase.warn.start' = 8,
  'bossfight.phase.warn.end' = 9,
  'bossfight.phase.soul.start' = 10,
  'bossfight.phase.soul.end' = 11,
  'cutscene.intro.start' = 12,
  'cutscene.intro.end' = 13,
  'cutscene.intro.turn_on_screen' = 14,
  'cutscene.intro.laugh.start' = 15,
  'cutscene.intro.laugh.end' = 16,
  'player.damage' = 17,
  'attack.bomb.start' = 18,
  'attack.bomb.end' = 19,
  'attack.dentata_snakes.start' = 20,
  'attack.dentata_snakes.end' = 21,
  'attack.finger_guns.start' = 22,
  'attack.finger_guns.end' = 23,
  'attack.friendliness_pellets.start' = 24,
  'attack.friendliness_pellets.end' = 25,
  'attack.homing_vines.start' = 26,
  'attack.homing_vines.end' = 27,
  'attack.x_bullets_lower.start' = 28,
  'attack.x_bullets_lower.end' = 29,
  'attack.x_bullets_upper.start' = 30,
  'attack.x_bullets_upper.end' = 31,
  'soul.act_button_summon' = 32,
  'soul.touch' = 33,
  'soul.saved' = 34,
  'player.heal' = 35
}

export enum BossfightEventIcon {
  'bossfight.phase.cutscene.start' = '🎥',
  'bossfight.phase.attack.start' = '🚩',
  'bossfight.phase.soul.start' = '👻',
  'bossfight.phase.warn.start' = '⚠️',
  'attack.bomb.start' = '⚔️',
  'attack.dentata_snakes.start' = '⚔️',
  'attack.finger_guns.start' = '⚔️',
  'attack.friendliness_pellets.start' = '⚔️',
  'attack.homing_vines.start' = '⚔️',
  'attack.x_bullets_lower.start' = '⚔️',
  'attack.x_bullets_upper.start' = '⚔️',
  'attack.bomb.end' = '🛡️',
  'attack.dentata_snakes.end' = '🛡️',
  'attack.finger_guns.end' = '🛡️',
  'attack.friendliness_pellets.end' = '🛡️',
  'attack.homing_vines.end' = '🛡️',
  'attack.x_bullets_lower.end' = '🛡️',
  'attack.x_bullets_upper.end' = '🛡️',
  'player.damage' = '💔',
  'soul.touch' = '✅',
  'player.heal' = '💚'
}

export enum BossfightStopReasonName {
  'player_not_found' = 1,
  'player_missing_tag' = 2,
  'player_oob' = 3,
  'player_died' = 4,
  'player_survived' = 5,
  'player_timeout' = 6
}

export enum BossfightStopReasonIcon {
  'player_not_found' = '🔌',
  'player_died' = '💀',
  'player_survived' = '🏆',
  'player_timeout' = '⏱️'
}

export enum Gamemode {
  survival = 0,
  creative = 1,
  adventure = 2,
  spectator = 3
}
