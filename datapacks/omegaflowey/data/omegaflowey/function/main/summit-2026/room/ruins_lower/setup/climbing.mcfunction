# NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
kill @e[ \
  predicate=summit.booth:omegaflowey/in_bounding_box/global, \
  tag=omega-flowey-remastered, \
  tag=climbing-hold-path-temp, \
  type=minecraft:item_frame \
]
# kill @e[ \
  x=25, dx=96, y=-10, dy=171, z=-47, dz=73, \
  tag=omega-flowey-remastered, \
  tag=climbing-hold-path-temp, \
  type=minecraft:item_frame \
]

execute positioned 98 33 -11 run function summit.climbing:delete_path/init
summon minecraft:item_frame 98 33 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 1 }
summon minecraft:item_frame 98 33 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 34 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 35 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 36 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 36 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 37 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 38 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 38 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 39 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 40 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 41 -11 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 41 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 41 -9 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 42 -9 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 43 -9 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 44 -9 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 44 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 45 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 46 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 98 47 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 5 }
summon minecraft:item_frame 97 48 -10 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 1 }
execute positioned 98 33 -11 run \
  function summit.climbing:create_path/init { \
    camera_distance: 2.5, \
    movement_cooldown: 6, \
    sound: "playsound omega-flowey:decorative.climb player @a[distance=..16] ~ ~ ~ 1", \
  }

# NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
kill @e[ \
  predicate=summit.booth:omegaflowey/in_bounding_box/global, \
  tag=omega-flowey-remastered, \
  tag=climbing-hold-path-temp, \
  type=minecraft:item_frame \
]
# kill @e[ \
  x=25, dx=96, y=-10, dy=171, z=-47, dz=73, \
  tag=omega-flowey-remastered, \
  tag=climbing-hold-path-temp, \
  type=minecraft:item_frame \
]

execute positioned 101 21 0 run function summit.climbing:delete_path/init
summon minecraft:item_frame 101 21 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 1 }
summon minecraft:item_frame 101 21 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 101 22 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 101 23 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 102 23 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 102 24 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 102 25 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 102 26 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 101 26 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 100 26 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 100 27 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 100 28 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 100 29 0 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 3 }
summon minecraft:item_frame 100 30 -1 { Tags: ["omega-flowey-remastered", "decorative", "climbing-hold-path-temp"], Facing: 1 }
execute positioned 101 21 0 run \
  function summit.climbing:create_path/init { \
    camera_distance: 3.5, \
    movement_cooldown: 6, \
    sound: "playsound omega-flowey:decorative.climb player @a[distance=..16] ~ ~ ~ 1" \
  }

# NOTE: TAG_SUMMIT_2026_HARDCODED_GLOBAL_VOLUME
kill @e[ \
  predicate=summit.booth:omegaflowey/in_bounding_box/global, \
  tag=omega-flowey-remastered, \
  tag=climbing-hold-path-temp, \
  type=minecraft:item_frame \
]
# kill @e[ \
  x=25, dx=96, y=-10, dy=171, z=-47, dz=73, \
  tag=omega-flowey-remastered, \
  tag=climbing-hold-path-temp, \
  type=minecraft:item_frame \
]
