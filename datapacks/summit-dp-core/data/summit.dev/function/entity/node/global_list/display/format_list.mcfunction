data modify storage summit:temp dev.globalList.formatted_list set value []
function summit.dev:entity/node/global_list/display/format_tasks with storage summit:temp dev.globalList.displayNodes[-1]
execute unless data storage summit:temp dev.globalList.formatted_list[-1] run data modify storage summit:temp dev.globalList.formatted_list set value [{label: "No tasks", width: 300, action: {type: "minecraft:show_dialog", dialog: "summit.dev:node/task_list"}}]
function summit.dev:entity/node/global_list/display/show_dialog with storage summit:temp dev.globalList
data remove storage summit:temp dev.globalList
