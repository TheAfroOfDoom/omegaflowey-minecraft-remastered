execute unless function reef:zzzinternals/screen/has_loaded_slideshow run return fail
execute unless function reef:zzzinternals/screen/has_finished_transition run return fail
$scoreboard players set @s reef.zzzinternals.screen.slideshow.switch_to_page $(page)
execute unless function reef:zzzinternals/screen/load_page run return fail
function reef:zzzinternals/screen/transition_to_page
