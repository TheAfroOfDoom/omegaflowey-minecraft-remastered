# Split rewards based on how many hits the player took
$execute \
  if score #omegaflowey.bossfight.player_hit_count global.flag matches ..3 \
  as $(active_player_uuid) \
  run function entity:directorial/boss_fight/summit/phase/soul/terminate/final/player/low_hits

$execute \
  if score #omegaflowey.bossfight.player_hit_count global.flag matches 4.. \
  as $(active_player_uuid) \
  run function entity:directorial/boss_fight/summit/phase/soul/terminate/final/player

function entity:directorial/boss_fight/shared/stop with storage omegaflowey:bossfight
