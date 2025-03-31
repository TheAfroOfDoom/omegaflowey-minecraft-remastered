# Summon indicator and _DON'T_ initialize
function omegaflowey.entity:hostile/omega-flowey/attack/shared/indicator/initialize

data modify entity @s CustomName set value '"X-Bullets-Upper-Save-States X-Bullets-Upper Indicator"'

tag @s add attack-indicator-new
tag @s add x-bullets-upper-save-states
tag @s add should-save-state
tag @s add x-bullets-upper-save-states-x-bullets-upper
