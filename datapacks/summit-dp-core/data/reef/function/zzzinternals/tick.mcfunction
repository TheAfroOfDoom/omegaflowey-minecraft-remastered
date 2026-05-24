execute as @e[type=item_display, tag=reef.element.animated_graphic, tag=!reef.element.animated_graphic.finished] run function reef:zzzinternals/screen/display/animated_graphic/animate
execute as @e[type=item_display, tag=reef.element.transition, tag=!reef.element.transition.finished] run function reef:zzzinternals/screen/display/transition/animate
execute as @e[type=item_display, tag=reef.screen, tag=!reef.screen.transition.finished] run function reef:zzzinternals/screen/transition_to_page/listen_for_switch_frame
