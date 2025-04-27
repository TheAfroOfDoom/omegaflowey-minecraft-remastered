# runs every tick on the AJ model, terminating if it's outside the arena bounds
function omegaflowey.entity:shared/run_if_outside_soul_arena_volume { command: \
  "function omegaflowey.entity:soul/soul_5/healer/terminate" \
}
