# Summon, initialize, and animate bullet (scale-in from 0)
$function entity:directorial/boss_fight/summit/origin/at/y { \
  command: "execute positioned $(x) ~23.0 $(z) run function animated_java:bomb/summon { \
    args: { animation: 'summon', start_animation: true } \
  }" \
}
execute as @e[tag=attack-bullet-new] at @s run function entity:hostile/omega-flowey/attack/bomb/bullet/initialize
