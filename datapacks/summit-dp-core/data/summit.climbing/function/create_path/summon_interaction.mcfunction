tag @n[tag=summit.climbing.entry, distance=..0.2] remove summit.climbing.entry
data modify entity @s data.id set from storage summit.climbing:master init.id
data merge entity @s {Tags: ["summit.climbing.entrance", "summit.interactable", "summit.climbing.entity"], height: 2}
data modify entity @s data.summit_interactable.on_right_click set value "execute at @s on target run function summit.climbing:climb/interaction/interaction"
data modify entity @s data.summit_interactable.on_left_click set value "execute at @s on attacker run function summit.climbing:climb/interaction/interaction"
