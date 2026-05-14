$item modify entity @s $(slot) summit.balloon:remove_non_balloons
$loot replace entity @s player.cursor loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_components",components:$(components)},{function:"minecraft:set_count",count:$(count)}]}]}]}
