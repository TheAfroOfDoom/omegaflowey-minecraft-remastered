execute unless function reef:zzzinternals/screen/has_loaded_slideshow run return fail
execute unless function reef:zzzinternals/screen/has_finished_transition run return fail
scoreboard players remove @s reef.zzzinternals.screen.slideshow.switch_to_page 1
execute if score @s reef.zzzinternals.screen.slideshow.switch_to_page matches ..-1 run return run function reef:api/screen/set_page/first_page
execute if score @s reef.zzzinternals.screen.slideshow.switch_to_page >= @s reef.zzzinternals.screen.slideshow.pages run return run function reef:api/screen/set_page/last_page
execute unless function reef:zzzinternals/screen/load_page run return fail
function reef:zzzinternals/screen/transition_to_page
