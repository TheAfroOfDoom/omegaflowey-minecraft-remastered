function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/bullet/initialize

# Replace certain NBT/tags
data merge entity @s { CustomName: '"X-Bullets-Upper-Save-States Homing-Vines Bullet"' }
tag @s remove homing-vines
tag @s add x-bullets-upper-save-states
tag @s add x-bullets-upper-save-states-homing-vines
