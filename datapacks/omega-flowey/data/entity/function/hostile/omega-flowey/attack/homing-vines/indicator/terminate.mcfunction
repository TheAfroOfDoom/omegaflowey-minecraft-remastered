execute if entity @s[tag=!homing-vines-save-states] if entity @s[tag=!x-bullets-upper-save-states] run kill @s
execute if entity @s[tag=homing-vines-save-states] run function entity:hostile/omega-flowey/attack/homing-vines-save-states/indicator/terminate
execute if entity @s[tag=x-bullets-upper-save-states] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/terminate/homing-vines
