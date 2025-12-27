# Delay before music/red flashing starts
scoreboard players set @s omegaflowey.boss-fight.cutscene.clock.i -14

# Summon and initialize `arena_box_vanilla` entity
# LINK: /omegaflowey.entity:directorial/boss_fight/shared/arena_box_vanilla/initialize.mcfunction
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { command: "\
  execute positioned ~ ~ ~20.5 rotated 180 0 run function animated_java:omegaflowey_arena_box_vanilla/summon { args: { variant: 'default' } \
"}
