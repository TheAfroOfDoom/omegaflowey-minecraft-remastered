# Summon bullet
$function entity:directorial/boss_fight/summit/origin/at/y { \
  command: "execute positioned $(x) ~-2.0 $(z) run function animated_java:finger_gun_bullet/summon { \
    args: { animation: 'shoot', start_animation: true } \
  }" \
}

# Copy yaw to bullet
execute store result storage attack:finger-guns yaw float 1 run data get entity @s Rotation[0] 100

# Initialize bullet
execute as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/finger-guns/bullet/initialize
