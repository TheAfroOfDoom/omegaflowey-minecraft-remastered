scoreboard players add @s boss-fight.progress.clock.i 1

# Return early if clock is negative
execute if score @s boss-fight.progress.clock.i matches ..-1 run return 0

# Terminate after event-finished-delay (exclusive to main event loop)
execute if entity @s[tag=event_is_done] run return run function entity:directorial/boss_fight/vanilla/phase/soul/terminate

# Start new soul event at clock index 0
execute if score @s boss-fight.progress.clock.i matches 0 run function entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event

# Run second clock after the soul event finishes
execute if score @s boss-fight.progress.clock.i = @s boss-fight.progress.clock.total run function entity:directorial/boss_fight/vanilla/phase/soul/loop/event_finished
