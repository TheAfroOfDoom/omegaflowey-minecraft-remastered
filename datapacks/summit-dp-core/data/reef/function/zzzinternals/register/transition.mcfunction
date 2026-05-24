$execute unless data storage $(storage_path) run return run function reef:zzzinternals/register/transition/errors/transition_not_found
$data remove storage reef.zzzinternals:registry transition."$(identifier)"
$data modify storage reef.zzzinternals:registry transition."$(identifier)" set from storage $(storage_path)
tellraw @a[tag=reef.permissions.see_debug] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#77d6ff'}, 'Transition data ', {'storage': 'reef.zzzinternals:in', 'nbt': 'register.transition.storage_path'}, ' successfully registered as ', {'storage': 'reef.zzzinternals:in', 'nbt': 'register.transition.identifier'}]]
