execute store result score $gametime summit.temp run time query gametime
execute as @e[tag=summit.bird_cooldown, type=minecraft:marker] if score @s summit.bird_timer <= $gametime summit.temp run tag @s remove summit.bird_cooldown
