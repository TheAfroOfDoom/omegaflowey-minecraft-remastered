scoreboard players set #exists summit.battlegrounds -1
$execute store success score #exists summit.battlegrounds run data get storage summit.battlegrounds:database booths[{booth_id:"$(booth_id)"}]
$execute if score #exists summit.battlegrounds matches 0 run tellraw @a[gamemode=creative,distance=..10] ["",{text:"[Battlegrounds API] ",color:"gold"},{text:"Booth '$(booth_id)' has been registered!",color:"dark_green"}]
$execute if score #exists summit.battlegrounds matches 1 run tellraw @a[gamemode=creative,distance=..10] ["",{text:"[Battlegrounds API] ",color:"gold"},{text:"Booth '$(booth_id)' registration has been updated!",color:"yellow"}]
$execute if score #exists summit.battlegrounds matches 1 run data remove storage summit.battlegrounds:database booths[{booth_id:"$(booth_id)"}]
$data modify storage summit.battlegrounds:database booths append value {booth_id:"$(booth_id)", booth_name:"$(booth_name)", return_pos:"$(return_pos)", return_rot:"$(return_rot)", struct_function:"$(struct_function)", compatibility:"$(compatibility)", kit_function:"$(kit_function)"}
return 1
