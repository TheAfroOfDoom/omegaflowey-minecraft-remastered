tellraw @s [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], {'text': "This screen doesn't exist! It may have been removed.", 'color': '#fa4267'}]
tellraw @a[tag=reef.permissions.see_debug] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#fa4267'}, {'selector': '@s'}, " tried to use a linked remote to a screen that doesn't exist."]]
return fail
