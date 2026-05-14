data modify storage summit:temp dev.globalList.displayNodes set value []
data modify storage summit:temp dev.globalList.displayNodes append from storage summit:root dev.nodeList[{color: 3}]
data merge storage summit:temp {dev: {globalList: {filter: "Building", task_type: "building"}}}
function summit.dev:entity/node/global_list/display/format_list
