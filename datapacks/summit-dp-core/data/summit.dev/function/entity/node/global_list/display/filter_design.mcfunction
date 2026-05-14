data modify storage summit:temp dev.globalList.displayNodes set value []
data modify storage summit:temp dev.globalList.displayNodes append from storage summit:root dev.nodeList[{color: 1}]
data merge storage summit:temp {dev: {globalList: {filter: "Design", task_type: "design"}}}
function summit.dev:entity/node/global_list/display/format_list
