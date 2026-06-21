data modify storage reef.zzzinternals:tmp root.commands_to_run.list set from entity @s data.reef.screen.slideshow.current.page_data.commands.on_exit
execute at @s run function reef:zzzinternals/screen/run_command_list
