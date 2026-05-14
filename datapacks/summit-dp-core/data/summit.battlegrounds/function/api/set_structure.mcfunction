data modify storage summit.battlegrounds:tempt summit_check set value {booth_id: "official_summit"}
$execute store success score #booth_matches summit.battlegrounds run data get storage summit.battlegrounds:database session{booth_id:"$(booth_id)"}
$execute unless score #booth_matches summit.battlegrounds matches 1 if data storage summit.battlegrounds:tempt summit_check{booth_id:"$(booth_id)"} run scoreboard players set #booth_matches summit.battlegrounds 1
execute unless score #booth_matches summit.battlegrounds matches 1 run return -1
$setblock -118 59 97 minecraft:structure_block[mode=load]{author:"Modulorium",components:{},ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"$(structure)",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",seed:0L,showair:0b,showboundingbox:1b,sizeX:39,sizeY:17,sizeZ:45,strict:1b}
setblock -118 58 97 redstone_block
execute as @a[tag=summit.battlegrounds.player] at @s unless block ~ ~ ~ #air unless block ~ ~1 ~ #air run function summit.battlegrounds:player/teleport/random
return 1
