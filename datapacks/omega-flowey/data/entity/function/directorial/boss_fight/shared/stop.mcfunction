function entity:remove_animated_java_models/boss_fight
# TAG_SUMMIT_HARDCODED_ARENA_VOLUME
execute as @e[ \
  x=-186, dx=61, y=12, dy=44, z=47, dz=60, \
  tag=omega-flowey-remastered \
] run function entity:directorial/boss_fight/shared/stop/as_root
stopsound @a record
