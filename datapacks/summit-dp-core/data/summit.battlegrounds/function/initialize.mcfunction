scoreboard objectives add summit.battlegrounds dummy
scoreboard objectives add summit.battlegrounds.trigger trigger
scoreboard objectives add summit.battlegrounds.kit_expiration dummy
scoreboard objectives add summit.battlegrounds.queued_booth dummy
scoreboard objectives add summit.battlegrounds.return_timer dummy
scoreboard objectives add summit.battlegrounds.died deathCount
scoreboard players set #6 summit.battlegrounds 6
execute unless data storage summit.battlegrounds:database inventory run function summit.battlegrounds:reset {confirm: "yes"}
function summit.battlegrounds:booth_queue/santize_queue
execute if entity @a[tag=summit.battlegrounds.player] run function summit.battlegrounds:battleground/loop
function summit.battlegrounds:loop
