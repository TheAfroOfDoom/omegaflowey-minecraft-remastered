execute if score .current_page reef.zzzinternals.register.mini >= .page_count reef.zzzinternals.register.mini run return 1
$data modify storage reef.zzzinternals:registry slideshow.'$(identifier)' append value '$(identifier)/$(current_page)'
data modify storage reef.zzzinternals:tmp register.mini.built_page set value {sequence: [[{type: "graphic", model: 0, components: {"minecraft:custom_model_data": {floats: [0]}}}]]}
data modify storage reef.zzzinternals:tmp register.mini.built_page.sequence[0][0].model set from storage reef.zzzinternals:tmp register.mini.model
execute store result storage reef.zzzinternals:tmp register.mini.built_page.sequence[0][0].components."minecraft:custom_model_data".floats[0] int 1 run data get storage reef.zzzinternals:tmp register.mini.current_page 1
execute if data storage reef.zzzinternals:tmp register.mini.transition run data modify storage reef.zzzinternals:tmp register.mini.built_page.transition set from storage reef.zzzinternals:tmp register.mini.transition
$data remove storage reef.zzzinternals:registry page."$(identifier)/$(current_page)"
$data modify storage reef.zzzinternals:registry page.'$(identifier)/$(current_page)' set from storage reef.zzzinternals:tmp register.mini.built_page
scoreboard players add .current_page reef.zzzinternals.register.mini 1
execute store result storage reef.zzzinternals:tmp register.mini.current_page int 1 run scoreboard players get .current_page reef.zzzinternals.register.mini
function reef:zzzinternals/register/mini/recurse with storage reef.zzzinternals:tmp register.mini
