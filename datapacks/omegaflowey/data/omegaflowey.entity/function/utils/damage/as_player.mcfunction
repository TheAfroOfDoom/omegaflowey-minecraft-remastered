# If player is going to die to this hit, disable `showDeathMessages` temporarily and display a custom death message
scoreboard players set #omegaflowey.bossfight.show_custom_death_message global.flag 0
$execute \
  if score @s player.health matches ..$(damage) \
  unless data entity @s active_effects[{ amplifier: 4b, duration: -1, id: "minecraft:resistance" }] \
  run scoreboard players set #omegaflowey.bossfight.show_custom_death_message global.flag 1
execute if score #omegaflowey.bossfight.show_custom_death_message global.flag matches 1 store result score @s math.0 run gamerule showDeathMessages
execute if score #omegaflowey.bossfight.show_custom_death_message global.flag matches 1 \
  if score @s math.0 matches 1 run gamerule showDeathMessages false

# TODO(39): remove these `unless entity @e[tag=boss_fight]`/`if entity @e[tag=boss_fight]` checks when boss fight is fully setup
# we have it here for development so that the boss entity (omega-flowey)
# does not need to exist for attacks to damage.
# `by @e[tag=boss_fight,limit=1]` is needed to have proper damage knockback + death messages ("killed by Omega Flowey")
$execute unless entity $(boss_fight_uuid) run damage @s $(damage) minecraft:mob_projectile
$execute if entity $(boss_fight_uuid) run damage @s $(damage) minecraft:mob_projectile by $(boss_fight_uuid)

scoreboard players add #omegaflowey.bossfight.player_hit_count global.flag 1
scoreboard players set #omegaflowey.bossfight.player_is_damage_immune global.flag 1

schedule function omegaflowey.main:summit/room/cave/active_player_health_display/scheduled 2t append

# Reset damage immunity after 0.5s
# https://minecraft.wiki/w/Damage#Immunity
schedule function omegaflowey.entity:utils/damage/reset_immunity_flag 10t replace

# Show custom death message
execute if score #omegaflowey.bossfight.show_custom_death_message global.flag matches 1 run tellraw @a [ \
  { "selector": "@s"}, \
  " was slain by ", \
  { "text": "Omega Flowey", "color": "green" } \
]

# Re-enable `showDeathMessages` if it was enabled previously
execute if score #omegaflowey.bossfight.show_custom_death_message global.flag matches 1 \
  if score @s math.0 matches 1 run gamerule showDeathMessages true
