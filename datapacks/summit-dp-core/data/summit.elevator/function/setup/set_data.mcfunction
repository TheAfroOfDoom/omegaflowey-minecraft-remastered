$data merge entity @s {teleport_duration:1,Tags:["summit.elevator"],data:{summit:{elevator:{height:$(height),chains:{x1:$(x1),y1:$(y1),z1:$(z1),x2:$(x2),y2:$(y2),z2:$(z2),raise:$(raise),lower:$(lower)}}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:diamond",count:1,components:{"minecraft:item_model":"summit_transport:elevator/4_open"}}}
execute store result entity @s teleport_duration int 1 run scoreboard players get $down_tp_dur summit.elevator.timer
$execute positioned ~1 ~3 ~1 run fill ~ ~ ~ ~ ~$(height) ~ exposed_lightning_rod[facing=up,powered=false] replace air strict
$execute positioned ~1 ~3 ~-1 run fill ~ ~ ~ ~ ~$(height) ~ exposed_lightning_rod[facing=up,powered=false] replace air strict
$execute positioned ~-1 ~3 ~1 run fill ~ ~ ~ ~ ~$(height) ~ exposed_lightning_rod[facing=up,powered=false] replace air strict
$execute positioned ~-1 ~3 ~-1 run fill ~ ~ ~ ~ ~$(height) ~ exposed_lightning_rod[facing=up,powered=false] replace air strict
execute store result score @s summit.elevator.id run scoreboard players add #max summit.elevator.id 1
function summit.elevator:move/finish with entity @s data.summit.elevator.chains
