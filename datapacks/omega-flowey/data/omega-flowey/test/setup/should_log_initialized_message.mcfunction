# @batch omega-flowey:setup
# @dummy

# log should be not contain initialized message
assert not chat 'Datapack initialized'

function omega-flowey:setup

# log should contain initialized message
assert chat 'Datapack initialized'
