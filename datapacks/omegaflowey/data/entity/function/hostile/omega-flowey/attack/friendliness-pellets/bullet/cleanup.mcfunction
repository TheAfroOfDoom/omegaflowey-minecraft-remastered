# runs every tick on the bullet AJ model, terminating if it's outside the arena bounds
function entity:shared/run_if_outside_arena_volume { command: \
  "function entity:hostile/omega-flowey/attack/friendliness-pellets/bullet/terminate" \
}