function entity:group/start
# execute as @e[tag=finger-guns-laser,scores={group.id=0}] run function animated_java:homing_vine_blinking_line/remove/this
execute as @e[tag=finger-guns-laser,scores={group.id=0}] run kill @s
function entity:group/end
