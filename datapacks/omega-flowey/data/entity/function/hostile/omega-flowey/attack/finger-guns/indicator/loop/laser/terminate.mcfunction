function entity:group/start
execute as @e[tag=finger-guns-laser,scores={group.id=0}] run function animated_java:finger_gun_laser/remove/this
function entity:group/end
