function entity:group/start
execute as @e[tag=homing-vines-blinking-lane,scores={group.id=0}] run function animated_java:homing_vine_blinking_lane/remove/this
function entity:group/end
