$execute unless data storage $(storage_path) run return run function reef:zzzinternals/register/mini/errors/definition_not_found
$data modify storage reef.zzzinternals:tmp register.mini set from storage $(storage_path)
$data modify storage reef.zzzinternals:tmp register.mini.identifier set value '$(identifier)'
execute store result score .page_count reef.zzzinternals.register.mini run data get storage reef.zzzinternals:tmp register.mini.page_count 1
scoreboard players set .current_page reef.zzzinternals.register.mini 0
execute store result storage reef.zzzinternals:tmp register.mini.current_page int 1 run scoreboard players get .current_page reef.zzzinternals.register.mini
$data remove storage reef.zzzinternals:registry slideshow."$(identifier)"
function reef:zzzinternals/register/mini/recurse with storage reef.zzzinternals:tmp register.mini
tellraw @a[tag=reef.permissions.see_debug] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#77d6ff'}, {'text': 'Registered mini '}, {'storage': 'reef.zzzinternals:in', 'nbt': 'register.mini.identifier'}, {'text': ' (hover for more info)', 'color': 'dark_gray', 'hover_event': {'action': 'show_text', 'value': ['Location: ', {'storage': 'reef.zzzinternals:in', 'nbt': 'register.mini.storage_path'}, '\n', 'Identifier: ', {'storage': 'reef.zzzinternals:in', 'nbt': 'register.mini.identifier'}]}}]]
