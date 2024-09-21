function entity:hostile/omega-flowey/summon/remove_preexisting_models/except_tv_screen
execute as @e[type=minecraft:item_display, tag=aj.tv_screen.root, tag=!tv_screen.outside] run function animated_java:tv_screen/remove/this
