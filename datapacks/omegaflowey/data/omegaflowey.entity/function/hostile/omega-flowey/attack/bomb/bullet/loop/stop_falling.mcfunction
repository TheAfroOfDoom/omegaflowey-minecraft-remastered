# Keep consistent y-pos
function omegaflowey.entity:directorial/boss_fight/summit/origin/at/y { \
  command: "teleport @s ~ ~-4.0 ~" \
}

# Play animation if we just stopped falling
execute unless entity @s[tag=is_done_falling] run function animated_java:omegaflowey_bomb/animations/explode/play
execute unless entity @s[tag=is_done_falling] run stopsound @a hostile omega-flowey:attack.bomb.explode
execute unless entity @s[tag=is_done_falling] run playsound omega-flowey:attack.bomb.explode hostile @a ~ ~ ~ 5 1

# Add tags
tag @s add is_done_falling
