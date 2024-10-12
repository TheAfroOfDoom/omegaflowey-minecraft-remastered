scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore bullet summoning logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Summon laser after `attack.indicator.clock.delay`
execute if score @s omegaflowey.attack.clock.i matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/presummon

# Summon a bullet
execute if score @s omegaflowey.attack.clock.i matches 5 run function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/bullet/presummon

# Terminate after finger-gun shoot animation finishes
execute if score @s omegaflowey.attack.clock.i >= @s attack.indicator.clock.length run function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/indicator/terminate
