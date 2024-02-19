# Split on phase score
execute if score @s boss-fight.progress.phase.i matches 0 run function entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event/0

# Change tv screen variant
execute as @e[tag=aj.tv_screen.root,tag=tv_screen.soul] run function animated_java:tv_screen/apply_variant/default
