## Initial TV screen static, before the soul event starts
scoreboard players add @s boss-fight.progress.clock.i 1

# Add tags
tag @s[tag=!has_active_soul_event] add has_active_soul_event

# Start new soul event at clock index 0
execute if score @s boss-fight.progress.clock.i matches 0 run function entity:directorial/boss_fight/summit/phase/soul/loop/next_event
