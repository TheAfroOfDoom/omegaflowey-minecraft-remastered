scoreboard players add @s attack.clock.i 1

# Summon and initialize 2 bullets each tick
function entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/presummon
function entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/presummon

# Terminate
execute if score @s attack.clock.i >= @s attack.indicator.clock.length run function entity:hostile/omega-flowey/attack/bomb/indicator/terminate
