function aj:omegaflowey_arena_box/remove/all

# NOTE: TAG_SUMMIT_2026_HARDCODED
execute \
  positioned 47.5 3.0 -14.5 rotated -90 0 \
  positioned ~20.5 ~ ~ rotated ~180 0 \
  run function aj:omegaflowey_arena_box/summon { args: { variant: 'intro_flashing_red' } }
