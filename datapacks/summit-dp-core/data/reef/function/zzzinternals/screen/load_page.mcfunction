execute if score @s reef.zzzinternals.screen.slideshow.switch_to_page matches ..-1 run return run function reef:zzzinternals/screen/load_page/errors/page_number_lt0
execute if score @s reef.zzzinternals.screen.slideshow.switch_to_page >= @s reef.zzzinternals.screen.slideshow.pages run return run function reef:zzzinternals/screen/load_page/errors/page_number_gtpages
scoreboard players operation @s reef.zzzinternals.screen.slideshow.current_page = @s reef.zzzinternals.screen.slideshow.switch_to_page
execute if score @s reef.zzzinternals.screen.slideshow.current_page matches ..-1 run return run function reef:zzzinternals/screen/load_page/errors/page_number_lt0
execute if score @s reef.zzzinternals.screen.slideshow.current_page >= @s reef.zzzinternals.screen.slideshow.pages run return run function reef:zzzinternals/screen/load_page/errors/page_number_gtpages
execute store result entity @s data.reef.screen.slideshow.current.page_number int 1 run scoreboard players get @s reef.zzzinternals.screen.slideshow.current_page
function reef:zzzinternals/screen/load_page/nested_macro_0 with entity @s data.reef.screen.slideshow.current
execute store result score @s reef.zzzinternals.screen.slideshow.transition.frames run data get entity @s data.reef.screen.slideshow.current.page_data.transition.frames
execute store result score @s reef.zzzinternals.screen.slideshow.transition.switch_frame run data get entity @s data.reef.screen.slideshow.current.page_data.transition.switch_frame
return 1
