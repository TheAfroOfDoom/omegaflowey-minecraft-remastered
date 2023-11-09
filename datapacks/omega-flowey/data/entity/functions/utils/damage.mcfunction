# TODO remove these `unless entity @e[tag=boss]`/`if entity @e[tag=boss]` checks when boss fight is fully setup
# we have it here for development so that the boss entity (omega-flowey)
# does not need to exist for attacks to damage.
# `by @e[tag=boss,limit=1]` is needed to have proper damage knockback + death messages ("killed by Omega Flowey")
$execute unless entity @e[tag=boss] as @a[distance=..$(radius),team=player] run damage @s $(damage) minecraft:mob_projectile
$execute if entity @e[tag=boss] as @a[distance=..$(radius),team=player] run damage @s $(damage) minecraft:mob_projectile by @e[tag=boss,limit=1]
