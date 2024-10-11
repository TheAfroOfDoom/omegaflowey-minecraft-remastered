# stop iterating once array is empty
execute unless data entity @s data.saved_states[-1] run return 0

# summon current element
function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states/iterate/summon with entity @s data.saved_states[-1]

# pop element from list
data remove entity @s data.saved_states[-1]

# next element
function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_all_states/iterate
