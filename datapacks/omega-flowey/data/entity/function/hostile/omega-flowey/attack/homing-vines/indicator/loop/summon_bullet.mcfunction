# Summon bullet (animation is just a hack to further lengthen the vine)
$execute positioned $(x) $(y) $(z) rotated $(bullet_yaw) $(bullet_pitch) run function animated_java:homing_vine/summon { args: { animation: "default", start_animation: true } }

# Initialize bullet
execute if entity @s[tag=!homing-vines-save-states,tag=!x-bullets-upper-save-states] as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/homing-vines/bullet/initialize
execute if entity @s[tag=homing-vines-save-states] as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/bullet/initialize
execute if entity @s[tag=x-bullets-upper-save-states] as @e[tag=attack-bullet-new] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/initialize/homing-vines

# Increment bullets summoned so far
scoreboard players add @s attack.bullets.count 1
