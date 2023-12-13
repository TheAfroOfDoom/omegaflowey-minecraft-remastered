execute as @e[tag=aj.upper_eye.root] run function animated_java:upper_eye/animations/look_around/resume
execute as @e[tag=aj.upper_eye.root] run function animated_java:upper_eye/apply_variant/default

execute as @e[tag=boss_fight] run function entity:hostile/omega-flowey/attack/x-bullets-upper/executor/terminate/boss_fight

kill @s
