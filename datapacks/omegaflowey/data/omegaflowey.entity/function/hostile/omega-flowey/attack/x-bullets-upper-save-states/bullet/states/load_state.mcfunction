function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/bullet/initialize/x-bullets-upper

execute store result score @s omegaflowey.attack.clock.i run data get storage omegaflowey:attack.x-bullets-upper-save-states state_scores.attack_clock_i
execute store result score @s aj.omegaflowey_spin_and_grow.frame run data get storage omegaflowey:attack.x-bullets-upper-save-states state_scores.aj_omegaflowey_spin_and_grow_frame

function animated_java:omegaflowey_projectile_star/animations/omegaflowey_spin_and_grow/resume
