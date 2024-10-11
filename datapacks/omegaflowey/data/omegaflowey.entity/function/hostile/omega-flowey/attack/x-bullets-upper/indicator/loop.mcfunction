## Runs tick-wise on the `attack-indicator` for the `x-bullets-upper` attack

# Summon another bullet each tick if `attack.bullets.remaining` is positive
execute if score @s attack.bullets.remaining matches 1.. run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/loop/presummon_bullet

# Terminate
execute if score @s attack.bullets.remaining matches ..0 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/indicator/terminate with entity @s data
