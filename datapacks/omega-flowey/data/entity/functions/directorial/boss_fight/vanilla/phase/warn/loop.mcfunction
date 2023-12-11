scoreboard players add @s boss-fight.warn.clock.i 1

# Terminate
execute if score @s boss-fight.warn.clock.i >= @s boss-fight.warn.clock.total run function entity:directorial/boss_fight/vanilla/phase/warn/terminate
