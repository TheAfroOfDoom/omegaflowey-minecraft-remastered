function reef:zzzinternals/screen/display/transition/load_transition
execute if data storage reef.zzzinternals:tmp root.transition._builtin run return run function reef:zzzinternals/screen/display/transition/run_builtin/
tag @s remove reef.element.transition.finished
