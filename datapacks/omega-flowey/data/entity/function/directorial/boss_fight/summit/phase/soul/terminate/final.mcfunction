# Remove tv_screen.soul model(s) if they exist
execute as @e[type=minecraft:item_display, tag=aj.tv_screen.root, tag=tv_screen.soul] run function animated_java:tv_screen/remove/this

# NOTE: TAG_SUMMIT_HARDCODED
# Player location after boss-fight ends
execute as @a[tag=omegaflowey.player.fighting_flowey] run function entity:directorial/boss_fight/summit/phase/soul/terminate/final/player

# end boss fight
kill @s
