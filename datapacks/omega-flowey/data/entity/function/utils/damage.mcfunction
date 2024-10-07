# TODO(39): remove these `unless entity @e[tag=boss_fight]`/`if entity @e[tag=boss_fight]` checks when boss fight is fully setup
# we have it here for development so that the boss entity (omega-flowey)
# does not need to exist for attacks to damage.
# `by @e[tag=boss_fight,limit=1]` is needed to have proper damage knockback + death messages ("killed by Omega Flowey")
$execute \
  unless entity $(boss_fight_uuid) \
  as $(active_player_uuid) \
  if entity @s[distance=..$(radius), tag=omegaflowey.player.fighting_flowey] \
  run damage @s $(damage) minecraft:mob_projectile

$execute \
  if entity $(boss_fight_uuid) \
  as $(active_player_uuid) \
  if entity @s[distance=..$(radius), tag=omegaflowey.player.fighting_flowey] \
  run damage @s $(damage) minecraft:mob_projectile by $(boss_fight_uuid)
