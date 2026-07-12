function omegaflowey:entity/reset_scores

function omegaflowey:entity/directorial/boss_fight/summit-2026/setup

# don't run room setup if there are no players on, as this duplicates entities due to them
# not being loaded
execute \
  if score #omegaflowey.admin.is_dev omegaflowey.global.flag matches 1 \
  if entity @a[limit=1] \
  run function omegaflowey:main/summit-2026/room/setup
