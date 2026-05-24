scoreboard players operation $cooldown_ticks summit.temp -= $gametime summit.temp
scoreboard players operation $cooldown_seconds summit.temp = $cooldown_ticks summit.temp
execute store result storage summit:temp balloon_vendor.cooldown_seconds int 1 run scoreboard players operation $cooldown_seconds summit.temp /= $20 summit.constants
scoreboard players operation $cooldown_minutes summit.temp = $cooldown_seconds summit.temp
execute store result storage summit:temp balloon_vendor.cooldown_minutes int 1 run scoreboard players operation $cooldown_minutes summit.temp /= $60 summit.constants
execute if score $cooldown_minutes summit.temp matches 0 run return run function summit.interaction:balloon_vendor/nested_macro_0 with storage summit:temp balloon_vendor
function summit.interaction:balloon_vendor/nested_macro_1 with storage summit:temp balloon_vendor
