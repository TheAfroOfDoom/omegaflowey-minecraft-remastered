function _:boss_fight/tag
function _:summon

function gu:generate
data modify storage omegaflowey:bossfight active_player_uuid set from storage gu:main out

data merge storage omegaflowey:dev.attack_test_suite { attacks: [ \
  { name: "bomb" }, \
  { name: "dentata-snakes" }, \
  { name: "finger-guns" }, \
  { name: "friendliness-pellets" }, \
  { name: "homing-vines" }, \
  { name: "x-bullets-lower" }, \
  { name: "x-bullets-upper" } \
]}
schedule function _:test/attacks/scheduled 2s
