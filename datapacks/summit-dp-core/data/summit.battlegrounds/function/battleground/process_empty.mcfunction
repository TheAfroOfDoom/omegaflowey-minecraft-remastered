execute if score $vacant_timer summit.battlegrounds matches -1 run scoreboard players set $vacant_timer summit.battlegrounds 30
execute if score $vacant_timer summit.battlegrounds matches 1.. run scoreboard players remove $vacant_timer summit.battlegrounds 1
execute if score $vacant_timer summit.battlegrounds matches 0 run function summit.battlegrounds:battleground/session/end
