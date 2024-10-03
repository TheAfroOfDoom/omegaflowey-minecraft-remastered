# NOTE: TAG_SUMMIT_HARDCODED
# Player location after boss-fight ends
execute as @a[tag=omegaflowey.player.fighting_flowey] run function entity:directorial/boss_fight/summit/phase/soul/terminate/final/player

execute as @e[type=minecraft:item_display, tag=aj.tv_screen.root, tag=tv_screen.boss_fight] run function animated_java:tv_screen/remove/this

# end boss fight
kill @s
