## Runs tick-wise on the `attack-indicator` for the `x-bullets-lower` attack

# Summon another bullet each tick if `omegaflowey.attack.bullets.remaining` is positive
execute if score @s omegaflowey.attack.bullets.remaining matches 1.. run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/loop/presummon_bullet

# Terminate
execute if score @s omegaflowey.attack.bullets.remaining matches ..0 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/indicator/terminate with entity @s data
