# this position is invalid if the placement is too close to the indicator
scoreboard players set @s omegaflowey.math.bool 1

$function omegaflowey.entity:directorial/boss_fight/vanilla/soul_origin/at/y { \
  command: "\
    execute \
      rotated $(next_bullet_angle_from_player) 0 positioned ^ ^ ^4 positioned ~ ~-3.9 ~ \
      if entity @e[ \
        type=minecraft:item_display, \
        tag=soul-indicator, \
        tag=soul_5, \
        distance=..3, \
        limit=1 \
      ] run scoreboard players set @s omegaflowey.math.bool 0\
  " \
}
