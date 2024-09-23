kill @e[tag=omega-flowey-remastered,tag=decorative]

function omega-flowey:summit/room/setup/outside

# NOTE: player should have y-coord of -4 blocks from Origin's Y coord
kill @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin]
summon minecraft:marker -177.5 67.0 62.5 { \
  CustomName:'"Omega-Flowey Boss-fight Origin"', \
  Tags: [ \
    "omega-flowey-remastered", \
    "origin", \
    "origin.boss_fight", \
  ] \
}
