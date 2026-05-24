execute if entity @s[tag=reef.screen.transition.finished] run return 1
tellraw @a[tag=reef.permissions.see_debug] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], {'text': 'Please wait for the transition to finish.', 'color': '#ffed87'}]
return fail
