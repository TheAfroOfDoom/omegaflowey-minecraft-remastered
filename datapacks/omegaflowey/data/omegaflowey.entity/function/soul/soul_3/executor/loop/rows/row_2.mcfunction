scoreboard players remove #omegaflowey.soul.3.row.2 omegaflowey.soul.clock.i 1
execute if score #omegaflowey.soul.3.row.2 omegaflowey.soul.clock.i matches 1.. run return 0

# summon word if at clock 0

function omegaflowey.entity:soul/soul_3/executor/loop/rows/randomize_x
data modify storage omegaflowey:soul.3 z set value -69.5f

function omegaflowey.entity:soul/soul_3/bullet/summon with storage omegaflowey:soul.3

scoreboard players set #omegaflowey.soul.3.row.2 omegaflowey.soul.clock.i 20
function omegaflowey.entity:soul/soul_3/executor/loop/rows/increase_all_timers
