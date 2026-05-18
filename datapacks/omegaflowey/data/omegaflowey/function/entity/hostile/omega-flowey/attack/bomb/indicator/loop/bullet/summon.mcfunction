# Summon, initialize, and animate bullet (scale-in from 0)
$function omegaflowey:entity/directorial/boss_fight/summit-2026/origin/at/y { \
  command: "execute positioned $(x) ~23.0 $(z) rotated 90 0 run function aj:omegaflowey_bomb/summon { \
    args: { animation: 'omegaflowey_summon', start_animation: true } \
  }" \
}
