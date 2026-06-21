data remove storage reef.zzzinternals:registry transition.none
data remove storage reef.zzzinternals:registry transition."reef:wipe"
data modify storage reef.zzzinternals:registry transition."reef:wipe" set value {_builtin: "wipe", frames: 20, switch_frame: 10}
