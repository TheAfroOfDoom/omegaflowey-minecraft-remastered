scoreboard players add @s boss-fight.attack.clock.i 1

# Start new attack after delay
function entity:directorial/boss_fight/shared/phase/attack/loop/check_if_next_attack { \
  command: "function entity:directorial/boss_fight/vanilla/phase/attack/loop/next_attack" \
}

# Terminate
execute if score @s boss-fight.attack.clock.i >= @s boss-fight.attack.clock.total run function entity:directorial/boss_fight/vanilla/phase/attack/terminate
