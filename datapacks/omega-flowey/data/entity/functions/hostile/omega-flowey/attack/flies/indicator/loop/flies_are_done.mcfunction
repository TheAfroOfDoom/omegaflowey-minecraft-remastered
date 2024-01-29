# After flies are done, continue incrementing attack.clock.i
scoreboard players add @s attack.clock.i 1

# Begin animation
# execute if score @s attack.clock.i matches 0 run

# Stop buzzing sound (if this is the only indicator active)
execute if score @s attack.clock.i matches 0 run function entity:hostile/omega-flowey/attack/flies/indicator/loop/maybe_stop_buzzing

# Terminate after X ticks (Y seconds)
execute if score @s attack.clock.i matches 9.. run function entity:hostile/omega-flowey/attack/flies/indicator/terminate
