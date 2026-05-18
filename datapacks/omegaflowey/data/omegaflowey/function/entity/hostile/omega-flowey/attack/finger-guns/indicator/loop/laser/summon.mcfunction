# Summon and initialize laser
$function omegaflowey:entity/directorial/boss_fight/summit-2026/origin/at/x { \
  command: "execute positioned $(x) ~0.5 ~ rotated 0 0 run function aj:omegaflowey_finger_gun_laser/summon { args: {} }" \
}
data modify entity @s data.corresponding_laser_uuid set from storage gu:main out
