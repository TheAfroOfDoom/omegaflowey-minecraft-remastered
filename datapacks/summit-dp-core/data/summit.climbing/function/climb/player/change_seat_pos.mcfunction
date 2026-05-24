function summit.climbing:climb/player/play_climbing_sound with entity @s data
execute positioned ^ ^ ^0.5 run function summit.climbing:climb/particle/init
$execute positioned ~ ~0.25 ~ as @p[tag=summit.climbing.player,distance=..32,nbt={UUID:$(UUID)}] on vehicle positioned ^ ^ ^-$(camera_distance) run tp @s ~ ~ ~ ~ ~
$execute positioned ~ ~0.25 ~ as @p[tag=summit.climbing.player,distance=..32,nbt={UUID:$(UUID)}] on vehicle at @s rotated as @s unless block ^1 ^ ^ #summit.climbing:climbing_safe if block ^-1 ^ ^ #summit.climbing:climbing_safe run tp @s ^-0.5 ^ ^
$execute positioned ~ ~0.25 ~ as @p[tag=summit.climbing.player,distance=..32,nbt={UUID:$(UUID)}] on vehicle at @s rotated as @s unless block ^-1 ^ ^ #summit.climbing:climbing_safe if block ^1 ^ ^ #summit.climbing:climbing_safe run tp @s ^0.5 ^ ^
$execute positioned ~ ~0.25 ~ as @p[tag=summit.climbing.player,distance=..32,nbt={UUID:$(UUID)}] on vehicle at @s rotated as @s unless block ^ ^1 ^ #summit.climbing:climbing_safe if block ^ ^-1 ^ #summit.climbing:climbing_safe run tp @s ^ ^-0.5 ^
$execute positioned ~ ~0.25 ~ as @p[tag=summit.climbing.player,distance=..32,nbt={UUID:$(UUID)}] on vehicle at @s rotated as @s unless block ^ ^-1 ^ #summit.climbing:climbing_safe if block ^ ^1 ^ #summit.climbing:climbing_safe run tp @s ^ ^0.5 ^
