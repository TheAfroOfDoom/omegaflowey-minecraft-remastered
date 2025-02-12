# Keep consistent y-pos
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/y { \
  command: "teleport @s ~ ~-4.0 ~" \
}

# Play animation if we just stopped falling
execute unless entity @s[tag=is_done_falling] run function animated_java:omegaflowey_bomb/animations/omegaflowey_explode/play
execute unless entity @s[tag=is_done_falling] run function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'execute at @s run function omegaflowey.entity:hostile/omega-flowey/attack/bomb/bullet/loop/stop_falling/as_player_once' \
}

# Add tags
tag @s add is_done_falling
