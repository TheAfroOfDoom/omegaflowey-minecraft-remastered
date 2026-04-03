$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_4/indicator/terminate

scoreboard players add @s omegaflowey.soul.clock.i 1

# switch to flip animation 19 ticks after start (see delay set in initialize fn)
# LINK: /soul/soul_4/indicator/initialize.mcfunction
execute if score @s omegaflowey.soul.clock.i matches -3 run \
  function omegaflowey.entity:soul/soul_4/indicator/switch_to_flip_animation

execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

# if this is the paused pan, switch to idle animation after some ticks
scoreboard players operation @s[tag=pause_flipping] omegaflowey.math.0 = @s omegaflowey.soul.clock.i
scoreboard players operation @s[tag=pause_flipping] omegaflowey.math.0 -= #omegaflowey.soul.4.act_button_pan_pause_clock_idx omegaflowey.soul.flag

execute if score @s[tag=pause_flipping] omegaflowey.math.0 matches 10 run \
  function omegaflowey.entity:soul/soul_4/indicator/switch_to_idle_animation

# unpause the paused pan after some more ticks
execute if score @s[tag=pause_flipping] omegaflowey.math.0 matches 60 run \
  function omegaflowey.entity:soul/soul_4/indicator/unpause

# summon clump of bullets every N ticks
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.soul.clock.i
scoreboard players operation @s omegaflowey.math.0 %= @s omegaflowey.soul.indicator.rate
execute if score @s omegaflowey.math.0 matches 0 run \
  function omegaflowey.entity:soul/soul_4/indicator/loop/summon_bullets_setup
