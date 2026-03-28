scoreboard players remove #omegaflowey.soul.3.row.2 omegaflowey.soul.clock.i 1
execute if score #omegaflowey.soul.3.row.2 omegaflowey.soul.clock.i matches 1.. run return 0

# summon word if at clock 0

function omegaflowey.entity:soul/soul_3/executor/loop/rows/randomize_params
data modify storage omegaflowey:soul.3 z set value -70.35714286f

function omegaflowey.entity:soul/soul_3/bullet/summon with storage omegaflowey:soul.3

execute store result score #omegaflowey.soul.3.row.2 omegaflowey.soul.clock.i run random value 0..27
scoreboard players add #omegaflowey.soul.3.row.2 omegaflowey.soul.clock.i 30

function omegaflowey.entity:soul/soul_3/executor/loop/rows/increase_all_timers
