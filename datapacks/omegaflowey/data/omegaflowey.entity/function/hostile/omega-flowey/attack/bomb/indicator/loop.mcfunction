scoreboard players add @s omegaflowey.attack.clock.i 1

# Summon and initialize 2 bullets each tick
function omegaflowey.entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/presummon
function omegaflowey.entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/presummon

# Terminate
execute if score @s omegaflowey.attack.clock.i >= @s omegaflowey.attack.indicator.clock.length run function omegaflowey.entity:hostile/omega-flowey/attack/bomb/indicator/terminate
