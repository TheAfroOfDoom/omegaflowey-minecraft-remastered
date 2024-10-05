# this position is invalid if the placement is too close to the indicator
scoreboard players set @s math.bool 1

# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
$function entity:directorial/boss_fight/summit/soul_origin/at/y { \
  command: "\
    execute \
      rotated $(next_bullet_angle_from_player) 0 positioned ^ ^ ^4 positioned ~ ~-3.9 ~ \
      if entity @e[ \
        x=-186, dx=91, y=12, dy=93, z=12, dz=95, \
        type=minecraft:item_display, \
        tag=soul-indicator, \
        tag=soul_5, \
        distance=..3, \
        limit=1 \
      ] run scoreboard players set @s math.bool 0\
  " \
}
