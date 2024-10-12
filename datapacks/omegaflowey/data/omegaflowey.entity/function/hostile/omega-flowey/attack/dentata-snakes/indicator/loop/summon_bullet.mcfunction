## Summon bullet
execute if score @s omegaflowey.attack.bullets.count matches 0 run scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
execute unless score @s omegaflowey.attack.bullets.count matches 0 run scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 1

# bullet head (begin animation)
$execute if score @s omegaflowey.attack.bullets.count matches 0 run function omegaflowey.entity:directorial/boss_fight/summit/origin/at/y { \
  command: "execute positioned $(x) ~-4.0 $(z) run function animated_java:omegaflowey_dentata_snake_ball/summon { \
    args: { animation: 'roll_bite', start_animation: true } \
  }" \
}
# bullet tail
$execute unless score @s omegaflowey.attack.bullets.count matches 0 run function omegaflowey.entity:directorial/boss_fight/summit/origin/at/y { \
  command: "execute positioned $(x) ~-4.0 $(z) run function animated_java:omegaflowey_dentata_snake_ball/summon/tail" \
}

# Increment bullets summoned so far
scoreboard players add @s omegaflowey.attack.bullets.count 1

# Reset `omegaflowey.attack.bullets.clock.i` to 0
scoreboard players set @s omegaflowey.attack.bullets.clock.i 0

# Scale next bullet model accordingly
function omegaflowey.entity:hostile/omega-flowey/attack/dentata-snakes/indicator/loop/next_scale
