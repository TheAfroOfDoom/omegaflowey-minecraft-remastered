# TODO(39): remove these `unless entity @e[tag=boss_fight]`/`if entity @e[tag=boss_fight]` checks when boss fight is fully setup
# we have it here for development so that the boss entity (omega-flowey)
# does not need to exist for attacks to damage.
# `by @e[tag=boss_fight,limit=1]` is needed to have proper damage knockback + death messages ("killed by Omega Flowey")
$execute unless entity $(boss_fight_uuid) run damage @s $(damage) minecraft:mob_projectile
$execute if entity $(boss_fight_uuid) run damage @s $(damage) minecraft:mob_projectile by $(boss_fight_uuid)

schedule function omega-flowey:summit/room/cave/active_player_health_display/scheduled 2t append
