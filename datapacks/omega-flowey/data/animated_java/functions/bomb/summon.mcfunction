summon minecraft:item_display ~ ~ ~ {id:"minecraft:item_display",Tags:["aj.new","aj.bomb.rig_entity","aj.bomb.bone","aj.bomb.bone.bone","aj.new","aj.bomb.rig_entity","aj.bomb.root","aj.rig_root"],transformation:[-1.25f,0f,1.5308084989341916e-16f,0f,0f,1.25f,0f,0f,-1.5308084989341916e-16f,0f,-1.25f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:84}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"bomb\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"bone\",\"color\":\"yellow\"},\"]\"]]",height:30f,width:10f}
execute as @e[type=minecraft:item_display,tag=aj.bomb.root,tag=aj.new,limit=1,distance=..0.1] run function animated_java:bomb/zzzzzzzz/summon/as_root