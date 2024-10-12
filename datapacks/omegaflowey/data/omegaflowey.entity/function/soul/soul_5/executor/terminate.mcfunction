$execute as $(boss_fight_uuid) run function omegaflowey.entity:soul/soul_5/executor/terminate/as_boss_fight

# NOTE: TAG_SUMMIT_HARDCODED_GLOBAL_VOLUME
execute as @e[ \
  x=-186, dx=91, y=12, dy=93, z=12, dz=95, \
  tag=soul_5, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:soul/soul_5/executor/terminate/as_root

stopsound @a record omega-flowey:music.soul.5
stopsound @a record omega-flowey:soul.saved
effect clear @a[tag=omegaflowey.player.fighting_flowey] minecraft:resistance

kill @s
