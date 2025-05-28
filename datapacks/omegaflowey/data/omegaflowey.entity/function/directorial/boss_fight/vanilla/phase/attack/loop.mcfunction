scoreboard players add @s omegaflowey.boss-fight.attack.clock.i 1

execute if entity @s[tag=is_test_playing] run function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/test_play/loop

# Start new attack after delay
function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/check_if_next_attack { \
  command: "function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/loop/next_attack" \
}

# Terminate
execute if score @s omegaflowey.boss-fight.attack.clock.i >= @s omegaflowey.boss-fight.attack.clock.total run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/terminate
