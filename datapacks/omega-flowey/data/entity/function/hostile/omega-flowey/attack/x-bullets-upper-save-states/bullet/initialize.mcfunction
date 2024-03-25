function entity:hostile/omega-flowey/attack/x-bullets-upper/bullet/initialize

# Replace certain NBT/tags
data merge entity @s { CustomName: '"X-Bullets-Upper-Save-States Bullet"' }
tag @s remove x-bullets-upper
tag @s add x-bullets-upper-save-states
tag @s add should-save-state
