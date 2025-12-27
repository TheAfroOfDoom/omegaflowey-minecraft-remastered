function animated_java:omegaflowey_arena_box_vanilla/remove/all

function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { command: "\
  execute positioned ~ ~ ~20.5 rotated 180 0 run \
    function animated_java:omegaflowey_arena_box_vanilla/summon { args: { variant: 'intro_flashing_red' } } \
"}
