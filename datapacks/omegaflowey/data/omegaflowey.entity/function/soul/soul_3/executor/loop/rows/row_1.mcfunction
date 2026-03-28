scoreboard players remove #omegaflowey.soul.3.row.1 omegaflowey.soul.clock.i 1
execute if score #omegaflowey.soul.3.row.1 omegaflowey.soul.clock.i matches 1.. run return 0

# summon word if at clock 0

function omegaflowey.entity:soul/soul_3/executor/loop/rows/randomize_params
data modify storage omegaflowey:soul.3 z set value -73.92857143f

function omegaflowey.entity:soul/soul_3/bullet/summon with storage omegaflowey:soul.3

execute store result score #omegaflowey.soul.3.row.1 omegaflowey.soul.clock.i run random value 0..7
scoreboard players add #omegaflowey.soul.3.row.1 omegaflowey.soul.clock.i 37

function omegaflowey.entity:soul/soul_3/executor/loop/rows/increase_all_timers
