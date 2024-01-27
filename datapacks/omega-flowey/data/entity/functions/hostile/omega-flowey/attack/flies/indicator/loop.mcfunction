scoreboard players add @s attack.clock.i 1

# Ignore bullet summoning logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Summon a bullet every `attack.indicator.rate` ticks
scoreboard players operation @s math.0 = @s attack.clock.i
scoreboard players operation @s math.0 %= @s attack.indicator.rate
execute if score @s attack.bullets.remaining matches 1.. if score @s math.0 matches 0 run function entity:hostile/omega-flowey/attack/flies/indicator/loop/bullet/presummon

# Terminate after flies shoot animation finishes
# TODO should only run terminate check upon a bullet's termination
execute if score @s attack.bullets.remaining matches ..0 run function entity:hostile/omega-flowey/attack/flies/indicator/terminate
