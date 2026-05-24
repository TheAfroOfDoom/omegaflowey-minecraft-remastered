scoreboard players operation .compare_value reef.zzzinternals.id_link = @s reef.zzzinternals.screen.id
data modify storage reef.zzzinternals:tmp root.transition set from entity @s data.reef.screen.slideshow.current.page_data.transition
execute if data storage reef.zzzinternals:tmp root.transition{_skip: 1b} run return run function reef:zzzinternals/screen/cut_to_page
tag @s remove reef.screen.transition.finished
execute as @n[type=item_display, tag=reef.element.transition, predicate=reef:zzzinternals/id_link/parent/screen] run function reef:zzzinternals/screen/display/transition/restart
