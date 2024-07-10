# Summon and initialize indicator
execute at @e[tag=aj.upper_eye.locator.pupil] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/summon/x-bullets-upper/raw
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/initialize/x-bullets-upper

scoreboard players remove @s attack.indicator.remaining 1
