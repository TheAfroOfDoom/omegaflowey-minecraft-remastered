execute at @e[type=item_display, tag=summit.static, distance=..32] run summon block_display ~-0.5 ~-0.5 ~-0.5 {Glowing: 1b, block_state: {Name: "minecraft:glass"}, Tags: ["summit.static.marker"]}
schedule function summit.dev:zz/displays/show_static/delete_markers 1s
