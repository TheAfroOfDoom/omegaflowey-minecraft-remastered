execute unless items entity @s weapon.mainhand *[custom_data~{reef: {item: {id: "reef:remote", components: {"reef:link": {linked: true}}}}}] run return run tellraw @s [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], {'text': 'You can only perform this action when holding a linked Reef remote on your weapon.mainhand slot.', 'color': '#fa4267'}]
summon item_display ~ ~ ~ {Tags: ["reef.item_store.linked_remote.temp", "reef.entity"], transformation: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]}
item replace entity @n[type=item_display, tag=reef.item_store.linked_remote.temp] contents from entity @s weapon.mainhand
data modify storage reef.zzzinternals:in remote.linked_remote set from entity @n[type=item_display, tag=reef.item_store.linked_remote.temp] item.components."minecraft:custom_data".reef.item.components."reef:link"
kill @n[type=item_display, tag=reef.item_store.linked_remote.temp]
