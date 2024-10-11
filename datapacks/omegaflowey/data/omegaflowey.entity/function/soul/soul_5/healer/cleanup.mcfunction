# runs every tick on the AJ model, terminating if it's outside the arena bounds
function entity:shared/run_if_outside_arena_volume { command: \
  "function entity:soul/soul_5/healer/terminate" \
}
