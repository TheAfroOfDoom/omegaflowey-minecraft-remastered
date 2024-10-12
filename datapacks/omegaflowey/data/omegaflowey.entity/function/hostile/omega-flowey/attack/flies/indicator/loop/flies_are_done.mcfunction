# After flies are done, continue incrementing omegaflowey.attack.clock.i
scoreboard players add @s omegaflowey.attack.clock.i 1

# Stop chomping animation
execute if score @s omegaflowey.attack.clock.i matches 0 run function animated_java:omegaflowey_venus_fly_trap/animations/omegaflowey_chomp/pause

# Begin desummon animation

# Stop buzzing sound (if this is the only indicator active)
execute if score @s omegaflowey.attack.clock.i matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/loop/maybe_stop_buzzing

# Terminate after X ticks (Y seconds)
execute if score @s omegaflowey.attack.clock.i matches 9.. run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/terminate
