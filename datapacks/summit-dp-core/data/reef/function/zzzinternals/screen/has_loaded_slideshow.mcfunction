execute if data entity @s data.reef.screen.slideshow run return 1
tellraw @p[tag=reef.permissions.see_debug,tag=reef.player.remote_user.temp] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], {'text': 'No slideshow loaded. Use a remote and open the slideshow settings to load a slideshow.', 'color': '#fa4267'}]
return fail
