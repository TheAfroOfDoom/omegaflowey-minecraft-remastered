execute summon item_display run function reef:zzzinternals/screen/setup_entity
particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0.2 10 normal @a[tag=reef.permissions.see_debug]
particle minecraft:nautilus ~ ~1 ~ 0 0 0 1 10 normal @a[tag=reef.permissions.see_debug]
particle minecraft:dust_color_transition{from_color: [0.8d, 0.8d, 1], to_color: [0.4d, 0.2d, 0.6d], scale: 1} ~ ~ ~ 0 0 0 0.2 10 normal @a[tag=reef.permissions.see_debug]
playsound minecraft:block.amethyst_block.resonate master @a[tag=reef.permissions.see_debug] ~ ~ ~ 0.5
tellraw @a[tag=reef.permissions.see_debug] [['', {'text': '[', 'color': '#6e3787'}, {'text': 'reef', 'color': '#ed2de3'}, {'text': '] ', 'color': '#6e3787'}], [{'text': '', 'color': '#77d6ff'}, 'Screen summoned!', {'text': ' (hover for more info)', 'color': 'dark_gray', 'hover_event': {'action': 'show_text', 'value': ['Location: ', {'entity': '@n[tag=reef.screen, distance=..5]', 'nbt': 'Pos'}, '\n', 'ID: #', {'score': {'name': '@n[tag=reef.screen, distance=..5]', 'objective': 'reef.zzzinternals.screen.id'}}, '\n\n', {'text': 'To rotate the screen, modify the `Rotation` tag instead of `transformation`.', 'color': '#77d6ff'}]}}]]
