data modify storage summit:temp dev.globalList.displayNodes set value []
data modify storage summit:temp dev.globalList.displayNodes append from storage summit:root dev.nodeList[{color: 4}]
data merge storage summit:temp {dev: {globalList: {filter: "Datapack", task_type: "datapack"}}}
function summit.dev:entity/node/global_list/display/format_list
