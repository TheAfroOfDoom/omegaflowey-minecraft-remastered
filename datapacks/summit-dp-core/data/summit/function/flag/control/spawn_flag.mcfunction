$data modify storage summit:temp summit_flag_macro set value {raise_height:$(raise_height), wind_sync:$(wind_sync), state:0}
execute as @n[tag=aj.summit_flag.root, tag=!aj.new, distance=..1] run function animated_java:summit_flag/remove/this
execute align xyz positioned ~0.5 ~0.25 ~0.5 rotated 0 0 run function animated_java:summit_flag/summon {args: {animation: "animation_sway_large", start_animation: true}}
execute align xyz positioned ~0.5 ~0.25 ~0.5 as @n[tag=aj.summit_flag.root, tag=!aj.new, distance=..1] run function summit:flag/init_flag with storage summit:temp summit_flag_macro
