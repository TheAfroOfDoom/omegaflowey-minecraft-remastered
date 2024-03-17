function entity:group/start
execute as @e[tag=homing-vines-blinking-lane,scores={group.id=0}] run function entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/terminate
function entity:group/end
