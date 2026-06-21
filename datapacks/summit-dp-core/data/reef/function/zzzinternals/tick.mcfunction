execute as @e[type=#reef:zzzinternals/screen_display, tag=reef.element, tag=!reef.element.transition, tag=reef.zzzinternals.marked_to_kill] run function reef:zzzinternals/screen/thy_shall_prepare_to_burn_the_witches/thy_shall_start_the_burning_ritual
execute as @e[type=item_display, tag=reef.element.animated_graphic, tag=!reef.element.animated_graphic.finished] run function reef:zzzinternals/screen/display/animated_graphic/animate
execute as @e[type=item_display, tag=reef.element.transition, tag=!reef.element.transition.finished] run function reef:zzzinternals/screen/display/transition/animate
execute as @e[type=item_display, tag=reef.screen, tag=!reef.screen.transition.finished] run function reef:zzzinternals/screen/transition_to_page/listen_for_switch_frame
