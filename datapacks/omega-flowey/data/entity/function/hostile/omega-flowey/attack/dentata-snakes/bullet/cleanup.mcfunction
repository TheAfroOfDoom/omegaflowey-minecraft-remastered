# runs every tick on the bullet AJ model, terminating if it's outside the booth bounds
function entity:shared/run_if_outside_booth_volume { terminate_command: \
  "function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/terminate" \
}
