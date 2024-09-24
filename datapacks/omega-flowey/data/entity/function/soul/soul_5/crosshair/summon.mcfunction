# Summon crosshair at random radius around this player (radius = 4 blocks)
$execute rotated $(next_bullet_angle_from_player) 0 positioned ^ ^ ^4 positioned ~ 63.0 ~ run function animated_java:soul_5_crosshair/summon { args: { variant: $(next_crosshair_variant) } }

# Initialize crosshair
execute as @e[tag=soul-crosshair-new] at @s run function entity:soul/soul_5/crosshair/initialize with storage soul:soul_5.indicator
