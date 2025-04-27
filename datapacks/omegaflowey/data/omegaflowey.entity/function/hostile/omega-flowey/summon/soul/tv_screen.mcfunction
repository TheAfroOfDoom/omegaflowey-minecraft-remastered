scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 2
# LINK: /omegaflowey.entity:hostile/omega-flowey/summon/initialize/tv_screen.mcfunction
function omegaflowey.entity:directorial/boss_fight/vanilla/soul_origin/at { \
  command: "execute positioned ~ ~12 ~7 rotated ~ ~45 run function animated_java:omegaflowey_tv_screen/summon { args: {} }" \
}
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
