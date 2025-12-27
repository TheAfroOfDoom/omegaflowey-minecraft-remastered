# Delay before music/red flashing starts
scoreboard players set @s omegaflowey.boss-fight.cutscene.clock.i -14

# Summon and initialize `arena_box_vanilla` entity
# LINK: /omegaflowey.entity:directorial/boss_fight/shared/arena_box_vanilla/initialize.mcfunction
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { command: "execute positioned ~ ~ ~20.5 rotated 180 0 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/cutscene/initialize/0/summon_arena_box"}
