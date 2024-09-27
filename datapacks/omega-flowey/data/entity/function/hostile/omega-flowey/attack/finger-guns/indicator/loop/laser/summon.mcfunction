# Summon laser
$function entity:directorial/boss_fight/summit/origin/at/x { \
  command: 'function entity:directorial/boss_fight/summit/origin/at/y { \
    command: "execute positioned ~ ~-3.5 $(z) run function animated_java:finger_gun_laser/summon { args: {} }" \
  }' \
}

# Copy group id to laser
execute store result storage group id int 1 run scoreboard players get @s group.id

# Initialize laser
execute as @e[tag=finger-guns-laser-new] run function entity:hostile/omega-flowey/attack/finger-guns/indicator/loop/laser/initialize with storage attack:finger-guns
