# Check if indicator should terminate
function omegaflowey.entity:group/start
execute as @e[scores={omegaflowey.group.id=0},tag=attack-indicator,tag=flies] run function omegaflowey.entity:hostile/omega-flowey/attack/flies/indicator/maybe_terminate
function omegaflowey.entity:group/end

function animated_java:housefly/remove/this
