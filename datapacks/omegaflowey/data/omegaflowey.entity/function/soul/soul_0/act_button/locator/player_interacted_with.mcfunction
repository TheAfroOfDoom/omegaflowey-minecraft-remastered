# do nothing if player already touched the ACT button
execute if score #omegaflowey.soul.0.touched omegaflowey.soul.flag matches 1 run return 0

function omegaflowey.entity:soul/soul_0/act_button/touch with storage omegaflowey:soul.0
