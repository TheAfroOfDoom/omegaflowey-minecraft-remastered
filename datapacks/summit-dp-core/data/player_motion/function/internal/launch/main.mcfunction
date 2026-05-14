item replace entity @s saddle with saddle[equippable={slot: "saddle", equip_sound: "intentionally_empty"}, enchantments={"player_motion:internal/apply_impulse": 1}]
function player_motion:internal/store/x
function player_motion:internal/store/y
function player_motion:internal/store/z
execute if entity @s[gamemode=survival] run scoreboard players set #mode player_motion.internal.gamemode 2
execute if entity @s[gamemode=adventure] run scoreboard players set #mode player_motion.internal.gamemode 3
execute if score #mode player_motion.internal.gamemode matches 2..3 run gamemode spectator
execute if score #mode player_motion.internal.gamemode matches 2 store success score #mode player_motion.internal.gamemode run return run gamemode survival
execute if score #mode player_motion.internal.gamemode matches 3 store success score #mode player_motion.internal.gamemode run return run gamemode adventure
scoreboard players set #falling player_motion.internal.gamemode 0
execute if predicate player_motion:internal/falling_creative_player store success score #falling player_motion.internal.gamemode run gamemode adventure
execute if score #falling player_motion.internal.gamemode matches 0 run gamemode spectator
return run gamemode creative
