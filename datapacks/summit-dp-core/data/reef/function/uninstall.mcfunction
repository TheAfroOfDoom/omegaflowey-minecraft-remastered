data remove storage reef.zzzinternals:in register
data remove storage reef.zzzinternals:in remote
data remove storage reef.zzzinternals:keywords transition
data remove storage reef.zzzinternals:registry slideshow
data remove storage reef.zzzinternals:registry page
data remove storage reef.zzzinternals:registry transition
data remove storage reef.zzzinternals:tmp root
scoreboard objectives remove reef.zzzinternals.screen.id
scoreboard objectives remove reef.zzzinternals.element.id
scoreboard objectives remove reef.zzzinternals.element.animated_graphic.current_frame
scoreboard objectives remove reef.zzzinternals.element.animated_graphic.frames
scoreboard objectives remove reef.zzzinternals.element.transition.current_frame
scoreboard objectives remove reef.zzzinternals.element.transition.frames
scoreboard objectives remove reef.zzzinternals.element.transition.switch_frame
scoreboard objectives remove reef.zzzinternals.screen.slideshow.pages
scoreboard objectives remove reef.zzzinternals.screen.slideshow.current_page
scoreboard objectives remove reef.zzzinternals.screen.slideshow.transition.current_frame
scoreboard objectives remove reef.zzzinternals.screen.slideshow.transition.switch_frame
scoreboard objectives remove reef.zzzinternals.screen.slideshow.transition.frames
scoreboard objectives remove reef.zzzinternals.screen.slideshow.switch_to_page
scoreboard objectives remove reef.zzzinternals.parent.element.id
scoreboard objectives remove reef.zzzinternals.parent.screen.id
scoreboard objectives remove reef.zzzinternals.id_link
kill @e[tag=reef.entity]
tellraw @a[tag=reef.permissions.see_debug] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#77d6ff'}, '', {'text': 'Uninstallation in progress... (read below)\n', 'color': 'red'}, {'text': 'Thanks for using Reef!\n', 'underlined': True}, {'text': 'All storages, scoreboards, and entities related to Reef have been deleted from your world.\n\n', 'color': 'gray', 'italic': True}, {'text': 'You can now delete the data pack file.\n\n', 'bold': True}, {'text': "If you didn't mean to run the uninstall function, you can /reload to cancel the process and continue using Reef.\n", 'color': 'gray', 'italic': True}]]
