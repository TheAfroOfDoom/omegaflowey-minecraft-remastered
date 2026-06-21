scoreboard players operation @s reef.zzzinternals.screen.slideshow.switch_to_page = @s reef.zzzinternals.screen.slideshow.current_page
tellraw @p[tag=reef.permissions.see_debug,tag=reef.player.remote_user.temp] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], {'text': 'Slideshow page number cannot be less than 0', 'color': '#fa4267'}]
return fail
