# Summon, initialize, and animate bullet (scale-in from 0)
$function omegaflowey.entity:directorial/boss_fight/summit/origin/at/y { \
  command: "execute positioned $(x) ~23.0 $(z) run function animated_java:omegaflowey_bomb/summon { \
    args: { animation: 'summon', start_animation: true } \
  }" \
}
