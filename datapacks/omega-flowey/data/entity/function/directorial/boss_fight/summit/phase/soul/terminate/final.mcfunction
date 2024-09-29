# Remove tv_screen.soul model(s) if they exist
execute as @e[type=minecraft:item_display, tag=aj.tv_screen.root, tag=tv_screen.soul] run function animated_java:tv_screen/remove/this

# NOTE: TAG_SUMMIT_HARDCODED
# Player location after boss-fight ends
teleport @a[tag=omegaflowey.player.fighting_flowey] -117.5 66.0 -2.5

# end boss fight
kill @s
