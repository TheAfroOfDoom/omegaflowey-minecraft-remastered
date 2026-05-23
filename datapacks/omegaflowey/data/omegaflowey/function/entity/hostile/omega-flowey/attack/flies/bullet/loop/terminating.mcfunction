scoreboard players add @s omegaflowey.attack.clock.i 1

# Play sound
execute if score @s omegaflowey.attack.clock.i matches 0 run \
  function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: \
    'playsound omega-flowey:attack.flies.swallow hostile @s ~ ~ ~ 5 1 1' \
  }

# Start animation
execute if score @s omegaflowey.attack.clock.i matches 0 run function aj:omegaflowey_housefly/animations/omegaflowey_shrink/play

# Move forward until done shrinking
execute if score @s omegaflowey.attack.clock.i matches ..3 run function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/loop/move

# Terminate
execute if score @s omegaflowey.attack.clock.i matches 10.. run function omegaflowey:entity/hostile/omega-flowey/attack/flies/bullet/terminate
