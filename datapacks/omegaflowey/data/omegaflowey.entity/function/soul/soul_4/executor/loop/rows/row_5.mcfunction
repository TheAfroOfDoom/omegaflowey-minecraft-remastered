scoreboard players remove #omegaflowey.soul.4.row.5 omegaflowey.soul.clock.i 1
execute if score #omegaflowey.soul.4.row.5 omegaflowey.soul.clock.i matches 1.. run return 0

# summon word if at clock 0

function omegaflowey.entity:soul/soul_4/executor/loop/rows/set_bullet_params
data modify storage omegaflowey:soul.4 z set value -59.64285714f

function omegaflowey.entity:soul/soul_4/bullet/summon with storage omegaflowey:soul.4

execute store result score #omegaflowey.soul.4.row.5 omegaflowey.soul.clock.i run random value 0..27
scoreboard players add #omegaflowey.soul.4.row.5 omegaflowey.soul.clock.i 30

function omegaflowey.entity:soul/soul_4/executor/loop/rows/increase_all_timers
