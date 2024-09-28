function entity:directorial/boss_fight/summit/soul_origin/at { \
  command: "execute positioned ~ ~12 ~-7 rotated ~ ~45 run function animated_java:tv_screen/summon { args: {} }" \
}
execute as @e[tag=aj.tv_screen.root, tag=tv-screen-new] run function entity:hostile/omega-flowey/summon/soul/tv_screen/initialize
