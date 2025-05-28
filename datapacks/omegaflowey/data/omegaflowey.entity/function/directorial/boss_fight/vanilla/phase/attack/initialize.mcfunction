# Split on phase score
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/0
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 1 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/1
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 2 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/2
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 4 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize/4

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.clock.i -1
scoreboard players set @s omegaflowey.boss-fight.attack.delay 10

# Start tvinside-faces loop
function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/tvscreen_inside_face

# Add tags
tag @s add boss_fight.phase.attack

# Remove tv_screen.soul model(s) if they exist
$execute as $(soul_tvscreen_uuid) run function animated_java:omegaflowey_tv_screen/remove/this
