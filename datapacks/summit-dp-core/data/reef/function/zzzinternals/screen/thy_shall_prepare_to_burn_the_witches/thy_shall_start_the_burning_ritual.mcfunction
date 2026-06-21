execute if entity @s[tag=reef.element, tag=reef.zzzinternals.to_kill] if data entity @s data.reef.element_data.commands.on_exit run function reef:zzzinternals/screen/thy_shall_prepare_to_burn_the_witches/thy_shall_start_the_burning_ritual/nested_execute_0
kill @s[tag=reef.zzzinternals.to_kill]
tag @s add reef.zzzinternals.to_kill
