execute unless data entity @s data.reef.screen.slideshow.current.page_data.sequence[0][0] run return run function reef:zzzinternals/screen/advance_page_sequence/display_element_group/nested_return_0
data modify storage reef.zzzinternals:tmp root.element.data set from entity @s data.reef.screen.slideshow.current.page_data.sequence[0][0]
scoreboard players operation .to_set reef.zzzinternals.id_link = @s reef.zzzinternals.screen.id
execute at @s run function reef:zzzinternals/screen/advance_page_sequence/display_element_group/display_element
data remove entity @s data.reef.screen.slideshow.current.page_data.sequence[0][0]
function reef:zzzinternals/screen/advance_page_sequence/display_element_group
