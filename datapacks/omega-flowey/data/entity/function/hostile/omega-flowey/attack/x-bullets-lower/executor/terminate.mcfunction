execute as @e[tag=aj.lower_eye.root] run function animated_java:lower_eye/animations/look_around/resume
execute as @e[tag=aj.lower_eye.root] run function animated_java:lower_eye/variants/default/apply

execute as @e[tag=boss_fight] run function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/terminate/boss_fight

kill @s
