# Summon and initialize gun
# TODO: TAG_SUMMIT_HARDCODED
execute positioned -178.0 63.1 117.5 rotated 180 0 run function animated_java:soul_5_gun/summon { args: {} }
execute as @e[tag=soul-indicator-new] at @s run function entity:soul/soul_5/indicator/initialize
