function animated_java:projectile_star/zzzzzzzz/animations/spin_and_grow/resume_as_root
function animated_java:projectile_star/zzzzzzzz/animations/spin_and_grow/tween_as_root
function animated_java:projectile_star/zzzzzzzz/animations/spin_and_grow/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i