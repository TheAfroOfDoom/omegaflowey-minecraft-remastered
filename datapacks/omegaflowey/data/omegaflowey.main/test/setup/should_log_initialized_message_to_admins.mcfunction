# @batch omegaflowey.main:setup
# @dummy

tag @s add omegaflowey.admin

# log should be not contain initialized message
assert not chat 'Datapack initialized'

function omegaflowey.main:setup

# log should contain initialized message
assert chat 'Datapack initialized'
