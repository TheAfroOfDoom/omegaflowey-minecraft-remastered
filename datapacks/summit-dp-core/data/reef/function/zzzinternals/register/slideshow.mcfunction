$execute unless data storage $(storage_path) run return run function reef:zzzinternals/register/slideshow/errors/slideshow_not_found
$data remove storage reef.zzzinternals:registry slideshow."$(identifier)"
$data modify storage reef.zzzinternals:registry slideshow."$(identifier)" set from storage $(storage_path)
tellraw @a[tag=reef.permissions.see_debug] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#77d6ff'}, 'Slideshow data ', {'storage': 'reef.zzzinternals:in', 'nbt': 'register.slideshow.storage_path'}, ' successfully registered as ', {'storage': 'reef.zzzinternals:in', 'nbt': 'register.slideshow.identifier'}]]
