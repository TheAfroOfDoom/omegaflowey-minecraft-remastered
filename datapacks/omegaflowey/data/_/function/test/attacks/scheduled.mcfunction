execute unless data storage omegaflowey:dev.attack_test_suite attacks[0] run return 0

function _:test/attacks/scheduled/macro with storage omegaflowey:dev.attack_test_suite attacks[0]
data remove storage omegaflowey:dev.attack_test_suite attacks[0]

schedule function _:test/attacks/scheduled 5s
