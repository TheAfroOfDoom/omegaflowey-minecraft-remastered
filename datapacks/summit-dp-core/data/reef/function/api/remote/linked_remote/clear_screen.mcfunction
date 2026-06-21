execute if entity @s[tag=!reef.permissions.use_remote] run return run tellraw @s [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#fa4267'}, 'You are not allowed to use this item. ', {'text': '(Missing permissions: reef.permissions.use_remote)', 'color': 'dark_gray'}]]
function reef:api/remote/linked_remote/load_remote_data
execute unless function reef:api/remote/linked_remote/prepare_screen_link run return fail
execute as @n[type=item_display, tag=reef.screen, predicate=reef:zzzinternals/id_link/screen] run function reef:zzzinternals/screen/thy_shall_prepare_to_burn_the_witches
