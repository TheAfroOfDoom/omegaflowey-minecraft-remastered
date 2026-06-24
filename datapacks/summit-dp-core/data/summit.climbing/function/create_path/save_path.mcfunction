$data modify storage summit.climbing:paths paths.$(id) set from storage summit.climbing:master init.saved_tiles
$data modify storage summit.climbing:paths paths.$(id).all_tiles set from storage summit.climbing:master init.all_tiles
$data modify storage summit.climbing:paths paths.$(id).camera_distance set from storage summit.climbing:master init.camera_distance
$data modify storage summit.climbing:paths paths.$(id).sound set from storage summit.climbing:master init.sound
$data modify storage summit.climbing:paths paths.$(id).movement_cooldown set from storage summit.climbing:master init.movement_cooldown
