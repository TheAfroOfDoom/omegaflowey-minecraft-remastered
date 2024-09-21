kill @e[tag=omega-flowey-remastered,tag=decorative]

function omega-flowey:summit/room/setup/outside

kill @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin]
summon minecraft:marker -178 67 62 { \
  CustomName:'"Omega-Flowey Boss-fight Origin"', \
  Tags: [ \
    "omega-flowey-remastered", \
    "origin", \
    "origin.boss_fight", \
  ] \
}
