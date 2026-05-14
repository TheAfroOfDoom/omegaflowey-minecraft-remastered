data modify storage summit:temp dev.globalList.displayNodes set value []
data modify storage summit:temp dev.globalList.displayNodes append from storage summit:root dev.nodeList[{color: 2}]
data merge storage summit:temp {dev: {globalList: {filter: "Resource Pack", task_type: "resource pack"}}}
function summit.dev:entity/node/global_list/display/format_list
