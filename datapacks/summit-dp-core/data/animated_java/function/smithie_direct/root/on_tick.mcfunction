execute unless entity @s[tag=aj.smithie_direct.root] run return 0
execute if entity @s[tag=aj.smithie_direct.animation.animation_smithie_direct_intro.playing] run function animated_java:smithie_direct/animations/animation_smithie_direct_intro/zzz/on_tick
execute if entity @s[tag=aj.smithie_direct.animation.animation_smithie_direct_flex.playing] run function animated_java:smithie_direct/animations/animation_smithie_direct_flex/zzz/on_tick
execute if entity @s[tag=aj.smithie_direct.animation.animation_smithie_direct_gangsta.playing] run function animated_java:smithie_direct/animations/animation_smithie_direct_gangsta/zzz/on_tick
execute if entity @s[tag=aj.smithie_direct.animation.animation_smithie_direct_idle.playing] run function animated_java:smithie_direct/animations/animation_smithie_direct_idle/zzz/on_tick
execute if entity @s[tag=aj.smithie_direct.animation.animation_smithie_direct_smile.playing] run function animated_java:smithie_direct/animations/animation_smithie_direct_smile/zzz/on_tick
execute if entity @s[tag=aj.smithie_direct.animation.animation_smithie_direct_speaking.playing] run function animated_java:smithie_direct/animations/animation_smithie_direct_speaking/zzz/on_tick
execute if entity @s[tag=aj.smithie_direct.animation.animation_smithie_direct_surprised.playing] run function animated_java:smithie_direct/animations/animation_smithie_direct_surprised/zzz/on_tick
execute on passengers run rotate @s ~ ~
