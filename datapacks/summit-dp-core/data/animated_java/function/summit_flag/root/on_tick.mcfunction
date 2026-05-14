execute unless entity @s[tag=aj.summit_flag.root] run return 0
execute if entity @s[tag=aj.summit_flag.animation.animation_model_sway.playing] run function animated_java:summit_flag/animations/animation_model_sway/zzz/on_tick
execute if entity @s[tag=aj.summit_flag.animation.animation_sway_large.playing] run function animated_java:summit_flag/animations/animation_sway_large/zzz/on_tick
execute on passengers run rotate @s ~ ~
