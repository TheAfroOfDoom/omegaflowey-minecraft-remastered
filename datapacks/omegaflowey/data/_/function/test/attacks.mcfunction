function _:boss_fight/tag
function _:summon

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
