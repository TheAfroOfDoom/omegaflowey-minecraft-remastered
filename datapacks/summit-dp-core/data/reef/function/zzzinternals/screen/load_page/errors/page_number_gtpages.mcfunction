scoreboard players operation @s reef.zzzinternals.screen.slideshow.switch_to_page = @s reef.zzzinternals.screen.slideshow.current_page
scoreboard players operation #tmp reef.zzzinternals.screen.slideshow.pages = @s reef.zzzinternals.screen.slideshow.pages
scoreboard players remove #tmp reef.zzzinternals.screen.slideshow.pages 1
tellraw @p[tag=reef.permissions.see_debug,tag=reef.player.remote_user.temp] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#fa4267'}, 'Slideshow page index cannot exceed page bounds (', {'score': {'name': '#tmp', 'objective': 'reef.zzzinternals.screen.slideshow.pages'}}, ')']]
return fail
