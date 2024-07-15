# Summon bullet
summon armor_stand ~ ~ ~ { Tags:["omega-flowey-remastered","soul","soul_5","soul-bullet","soul-bullet-new"],NoGravity:true}

# Initialize bullet
execute as @e[tag=soul-bullet-new] at @s run function entity:soul/soul_5/bullet/initialize with storage soul:soul_5.indicator
