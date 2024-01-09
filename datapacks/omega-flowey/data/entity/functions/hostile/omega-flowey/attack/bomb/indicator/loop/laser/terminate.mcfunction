function entity:group/start
execute as @e[tag=bomb-laser,scores={group.id=0}] run function animated_java:bomb_laser/remove/this
function entity:group/end
