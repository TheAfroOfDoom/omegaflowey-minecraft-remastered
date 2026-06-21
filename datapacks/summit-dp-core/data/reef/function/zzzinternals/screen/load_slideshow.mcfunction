$data modify storage reef.zzzinternals:tmp root.slideshow_data.reference set from storage reef.zzzinternals:registry slideshow."$(id)"
data modify storage reef.zzzinternals:tmp root.slideshow_data.unpacked set value []
function reef:zzzinternals/screen/load_slideshow/unpack_pages
data modify entity @s data.reef.screen.slideshow.data set from storage reef.zzzinternals:tmp root.slideshow_data.unpacked
execute store result score @s reef.zzzinternals.screen.slideshow.pages run data get entity @s data.reef.screen.slideshow.data
scoreboard players set @s reef.zzzinternals.screen.slideshow.switch_to_page 0
function reef:zzzinternals/screen/load_page
function reef:zzzinternals/screen/transition_to_page
tellraw @a[tag=reef.permissions.see_debug, tag=reef.player.remote_user.temp] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#77d6ff'}, 'Successfuly loaded slideshow data to screen ID #', {'score': {'name': '@s', 'objective': 'reef.zzzinternals.screen.id'}}, {'text': ' (hover for more info)', 'color': 'dark_gray', 'hover_event': {'action': 'show_text', 'value': ['Screen position: ', {'entity': '@s', 'nbt': 'Pos'}]}}]]
