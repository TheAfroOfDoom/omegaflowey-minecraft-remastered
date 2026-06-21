$data modify storage summit.activity:temp macro.current_booth_name set from storage summit.activity:names "$(current_id)".booth
$data modify storage summit.activity:temp macro.current_activity_name set from storage summit.activity:names "$(current_id)".activity
$data modify storage summit.activity:temp macro.new_booth_name set from storage summit.activity:names "$(id)".booth
$data modify storage summit.activity:temp macro.new_activity_name set from storage summit.activity:names "$(id)".activity
