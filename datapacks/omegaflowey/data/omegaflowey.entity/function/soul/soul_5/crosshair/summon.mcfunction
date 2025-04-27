# Summon and initialize crosshair at random radius around this player (radius = 4 blocks)
$function omegaflowey.entity:directorial/boss_fight/vanilla/soul_origin/at/y { \
  command: "execute \
    rotated $(next_bullet_angle_from_player) 0 \
    positioned ^ ^ ^4 \
    positioned ~ ~-4.0 ~ \
    facing entity $(indicator_uuid) eyes \
    rotated ~ 0 \
    run function animated_java:omegaflowey_soul_5_crosshair/summon { args: { variant: $(next_crosshair_variant) } }" \
}
