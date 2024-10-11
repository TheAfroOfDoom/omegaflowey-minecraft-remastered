# Summon and initialize indicator
summon minecraft:marker ~ ~ ~ { CustomName: '"X-Bullets-Upper-Save-States Homing-Vines Indicator"', Tags:["omega-flowey-remastered","hostile","omega-flowey","attack","attack-indicator","attack-indicator-new","x-bullets-upper-save-states","x-bullets-upper-save-states-homing-vines"] }
execute as @e[tag=attack-indicator-new] at @s run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/initialize/homing-vines
