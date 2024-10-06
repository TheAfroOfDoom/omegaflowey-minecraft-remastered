# Summon and initialize laser
$function entity:directorial/boss_fight/summit/origin/at/x { \
  command: "execute positioned ~ ~0.5 $(z) run function animated_java:finger_gun_laser/summon { args: {} }" \
}
execute on passengers if entity @s[type=minecraft:marker, tag=aj.data] run \
  data modify entity @s data.corresponding_laser_uuid set from storage gu:main out
