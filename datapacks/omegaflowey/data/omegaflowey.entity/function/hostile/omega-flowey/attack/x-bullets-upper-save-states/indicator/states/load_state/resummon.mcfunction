# Re-summon indicator
execute summon minecraft:marker run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/summon/x-bullets-upper/raw/shared

# Load its state from before
execute as @e[tag=attack-indicator-new] run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/indicator/states/load_state
