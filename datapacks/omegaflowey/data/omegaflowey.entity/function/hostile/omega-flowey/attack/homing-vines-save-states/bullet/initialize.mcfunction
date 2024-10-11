function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/bullet/initialize

# Replace certain NBT/tags
data merge entity @s { CustomName: '"Homing-Vines-Save-States Bullet"' }
tag @s remove homing-vines
tag @s add homing-vines-save-states
tag @s add should-save-state
