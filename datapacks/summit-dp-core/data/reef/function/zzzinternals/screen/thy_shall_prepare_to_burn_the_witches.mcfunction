scoreboard players operation .compare_value reef.zzzinternals.id_link = @s reef.zzzinternals.screen.id
execute as @e[type=#reef:zzzinternals/screen_display, tag=!reef.element.transition, predicate=reef:zzzinternals/id_link/parent/screen] at @s run function reef:zzzinternals/screen/thy_shall_prepare_to_burn_the_witches/nested_execute_0
execute if data entity @s data.reef.screen.slideshow.current.page_data.commands.on_exit run function reef:zzzinternals/screen/thy_shall_prepare_to_burn_the_witches/nested_execute_1
