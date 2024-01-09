scoreboard players add @s attack.clock.i 1

# Ignore bullet summoning logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Summon a bullet
execute if score @s attack.clock.i matches 5 run function entity:hostile/omega-flowey/attack/bomb/indicator/loop/bullet/presummon

# Terminate after finger-gun shoot animation finishes
execute if score @s attack.clock.i >= @s attack.indicator.clock.length run function entity:hostile/omega-flowey/attack/bomb/indicator/terminate
