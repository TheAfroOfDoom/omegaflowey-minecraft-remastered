data modify storage summit:temp dev.globalList.displayNodes set value []
data modify storage summit:temp dev.globalList.displayNodes append from storage summit:root dev.nodeList[{color: 5}]
data merge storage summit:temp {dev: {globalList: {filter: "Other", task_type: "miscellaneous"}}}
function summit.dev:entity/node/global_list/display/format_list
