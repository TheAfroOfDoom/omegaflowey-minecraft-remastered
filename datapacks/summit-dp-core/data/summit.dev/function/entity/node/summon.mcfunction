data remove storage summit:temp dev.newNode
scoreboard players add #nodeCounter summit.temp 1
summon item_display ~ ~0.5 ~ {item_display: "head", Tags: ["smithed.strict", "summit.node", "new"], brightness: {sky: 15, block: 15}, Passengers: [{id: "minecraft:interaction", width: 1.0f, height: 4.75f, Tags: ["smithed.strict", "summit.node"]}, {id: "minecraft:text_display", line_width: 400, view_range: 0.25f, billboard: "vertical", see_through: 1b, Tags: ["smithed.strict", "summit.node"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 1.175f, 0.0f], scale: [1.0f, 1.0f, 1.0f]}, text: {bold: 1b, text: "New Node"}}, {id: "minecraft:armor_stand", Tags: ["smithed.entity", "smithed.strict", "summit.node"], CustomName: '"node waypoint"', Marker: 1b, Invisible: 1b, Small: 1b, NoGravity: 1b}]}
loot replace entity @n[type=item_display, tag=new] container.0 loot {pools: [{rolls: 1, entries: [{type: "minecraft:item", name: "minecraft:player_head", functions: [{function: "minecraft:fill_player_head", entity: "this"}]}]}], functions: []}
kill @n[type=area_effect_cloud, tag=summit.nodeSpawner]
execute store result storage summit:temp dev.newNode.id int 1 run scoreboard players get #nodeCounter summit.temp
$data modify storage summit:temp dev.newNode.name set value "$(name)"
$data modify storage summit:temp dev.newNode.description set value "$(desc)"
$data modify storage summit:temp dev.newNode.color set value $(color)
data modify storage summit:temp dev.newNode.owner set from entity @n[type=item_display, tag=new] item.components."minecraft:profile".name
execute store result storage summit:temp dev.newNode.timestamp int 1 run time query gametime
data modify storage summit:temp dev.newNode.claim set value "Not Claimed"
$scoreboard players set #temp summit.temp $(doRef)
$execute if score #temp summit.temp matches 1 run data modify storage summit:temp dev.newNode.ref set value "$(ref)"
execute if score #temp summit.temp matches 1 run data modify storage summit:temp dev.newNode.ref set string storage summit:temp dev.newNode.ref 1
execute as @n[type=item_display, tag=new] run function summit.dev:entity/node/init with storage summit:temp dev.newNode
playsound minecraft:entity.chicken.egg ui @a ~ ~ ~ 1 0.8
particle minecraft:poof ~ ~0.5 ~ 0 0 0 0.2 25
scoreboard players reset #temp summit.temp
