# Check if indicator should terminate
execute if entity @s[tag=is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/maybe_terminate with storage omegaflowey:attack.flies.flipped
execute if entity @s[tag=!is_flipped] run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/maybe_terminate with storage omegaflowey:attack.flies.nonflipped

function aj:omegaflowey_housefly/remove/this
