$execute positioned $(next_bullet_x) 34.0 $(next_bullet_z) run function animated_java:act_button/summon { args: {} }

# Initialize
execute as @e[tag=act-button-new] at @s run function entity:soul/soul_2/act_button/initialize
