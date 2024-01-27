kill @s

# Check if indicator should terminate
function entity:group/start
execute as @e[scores={group.id=0},tag=attack-indicator,tag=flies] run function entity:hostile/omega-flowey/attack/flies/indicator/maybe_terminate
function entity:group/end
