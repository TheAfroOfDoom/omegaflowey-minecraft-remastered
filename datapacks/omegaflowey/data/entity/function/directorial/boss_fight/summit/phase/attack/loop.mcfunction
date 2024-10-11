scoreboard players add @s boss-fight.attack.clock.i 1

function entity:directorial/boss_fight/shared/phase/attack/loop/check_if_next_attack { \
  command: "function entity:directorial/boss_fight/summit/phase/attack/loop/next_attack" \
}

# Terminate
execute if score @s boss-fight.attack.clock.i >= @s boss-fight.attack.clock.total run function entity:directorial/boss_fight/summit/phase/attack/terminate
