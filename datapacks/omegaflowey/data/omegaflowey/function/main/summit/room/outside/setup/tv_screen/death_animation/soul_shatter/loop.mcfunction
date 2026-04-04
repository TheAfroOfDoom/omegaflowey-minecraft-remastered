execute unless entity @s[tag=tv_screen.outside, tag=is_active_death_animation] run return 0

scoreboard players add @s omegaflowey.decorative.clock.i 1
execute if score @s omegaflowey.decorative.clock.i matches 38 run return run tag @s remove is_active_death_animation

execute if score @s omegaflowey.decorative.clock.i matches 0 run playsound omega-flowey:decorative.soul.shatter ambient @a[distance=..64] ~ ~ ~ 4
execute if score @s omegaflowey.decorative.clock.i matches 0 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_0/apply

execute if score @s omegaflowey.decorative.clock.i matches 1 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_1/apply
execute if score @s omegaflowey.decorative.clock.i matches 2 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_2/apply
execute if score @s omegaflowey.decorative.clock.i matches 3 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_3/apply
execute if score @s omegaflowey.decorative.clock.i matches 4 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_4/apply
execute if score @s omegaflowey.decorative.clock.i matches 5 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_5/apply
execute if score @s omegaflowey.decorative.clock.i matches 6 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_6/apply
execute if score @s omegaflowey.decorative.clock.i matches 7 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_7/apply
execute if score @s omegaflowey.decorative.clock.i matches 8 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_8/apply
execute if score @s omegaflowey.decorative.clock.i matches 9 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_9/apply
execute if score @s omegaflowey.decorative.clock.i matches 10 run return run function animated_java:omegaflowey_tv_screen/variants/soul_shatter_10/apply
execute if score @s omegaflowey.decorative.clock.i matches 11 run return run function animated_java:omegaflowey_tv_screen/variants/default/apply
