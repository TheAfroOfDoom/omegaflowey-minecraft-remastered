execute store result score $gametime summit.temp run time query gametime
$scoreboard players operation $cooldown_ticks summit.temp = @s summit.balloon_cooldown.$(namespace).$(balloon_id)
execute if score $cooldown_ticks summit.temp > $gametime summit.temp run return run function summit.interaction:balloon_vendor/nested_return_0
scoreboard players add $gametime summit.temp 24000
$scoreboard players operation @s summit.balloon_cooldown.$(namespace).$(balloon_id) = $gametime summit.temp
$function summit.balloon:give/$(namespace)/$(balloon_id)
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.5
