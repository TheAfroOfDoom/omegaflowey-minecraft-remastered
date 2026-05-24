execute unless data entity @s data.reef.screen.slideshow.current.page_data.sequence[0][0] run return run function reef:zzzinternals/screen/advance_page_sequence/display_element_group/nested_return_0
data modify storage reef.zzzinternals:tmp root.element.data set from entity @s data.reef.screen.slideshow.current.page_data.sequence[0][0]
execute at @s run function reef:zzzinternals/screen/advance_page_sequence/display_element_group/display_element
scoreboard players operation @n[type=#reef:zzzinternals/screen_display, tag=reef.element.new] reef.zzzinternals.parent.screen.id = @s reef.zzzinternals.screen.id
tag @n[type=#reef:zzzinternals/screen_display, tag=reef.element.new] remove reef.element.new
data remove entity @s data.reef.screen.slideshow.current.page_data.sequence[0][0]
function reef:zzzinternals/screen/advance_page_sequence/display_element_group
