data modify storage reef.zzzinternals:tmp root.commands_to_run.list set from entity @s data.reef.element_data.commands.on_enter
execute at @s run function reef:zzzinternals/screen/run_command_list
