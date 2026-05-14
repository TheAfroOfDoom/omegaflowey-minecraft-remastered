$data remove storage summit.climbing:paths paths.$(id)
$kill @e[tag=summit.climbing.entrance,nbt={data:{id:$(id)}}]
