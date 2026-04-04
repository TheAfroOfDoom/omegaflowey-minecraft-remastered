# do nothing if player already touched the ACT button
execute if score #omegaflowey.soul.4.touched omegaflowey.soul.flag matches 1 run return 0

$execute as $(soul_act_button_uuid) run function omegaflowey:entity/soul/soul_4/act_button/touch with storage omegaflowey:soul.4
