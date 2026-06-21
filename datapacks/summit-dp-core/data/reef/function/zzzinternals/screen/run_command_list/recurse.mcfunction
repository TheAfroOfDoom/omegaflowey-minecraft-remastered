execute unless data storage reef.zzzinternals:tmp root.commands_to_run.list[0] run return 1
data modify storage reef.zzzinternals:tmp root.commands_to_run.current_command set from storage reef.zzzinternals:tmp root.commands_to_run.list[0]
function reef:zzzinternals/screen/run_command_list/recurse/nested_macro_0 with storage reef.zzzinternals:tmp root.commands_to_run
data remove storage reef.zzzinternals:tmp root.commands_to_run.list[0]
function reef:zzzinternals/screen/run_command_list/recurse
