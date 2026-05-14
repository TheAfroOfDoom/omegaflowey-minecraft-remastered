$execute as @n[nbt={profile:{id:$(UUID)}}] run function summit.climbing:climb/mannequin/end
$execute as @p[nbt={UUID:$(UUID)}] run function summit.climbing:climb/player/exit/end_sequence/start
