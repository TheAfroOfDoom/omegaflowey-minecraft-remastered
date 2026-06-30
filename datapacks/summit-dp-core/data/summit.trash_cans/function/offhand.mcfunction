execute if items entity @s weapon.offhand *[custom_data~{summit: {untrashable: true}}] run return run title @s actionbar {text: "You cannot trash this item"}
item replace entity @s weapon.offhand with minecraft:air
playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 1 1.38
