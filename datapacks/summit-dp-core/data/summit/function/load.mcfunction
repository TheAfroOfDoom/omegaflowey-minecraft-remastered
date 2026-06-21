forceload add -30000000 0
setblock -30000000 0 0 yellow_shulker_box
data modify storage summit:player_items cache set value {}
scoreboard objectives add summit.temp dummy
scoreboard objectives add summit.ticked_functions_active dummy
scoreboard objectives add summit.time_played minecraft.custom:minecraft.play_time
scoreboard objectives add summit.on_join minecraft.custom:minecraft.leave_game
scoreboard players reset * summit.on_join
scoreboard players set @a summit.on_join 0
scoreboard objectives add spawn trigger
function summit.sticker_book:load
function summit.elevator:load
function summit.wind:load
function summit:set_gamerules
scoreboard objectives add summit.constants dummy
scoreboard players set $-1 summit.constants -1
scoreboard players set $10 summit.constants 10
scoreboard players set $15 summit.constants 15
scoreboard players set $20 summit.constants 20
scoreboard players set $60 summit.constants 60
scoreboard players set $300 summit.constants 300
scoreboard players set $400 summit.constants 500
scoreboard players set $500 summit.constants 500
scoreboard players set $1000 summit.constants 1000
function summit.dev:zz/displays/rope/loop
scoreboard objectives add summit.vehicles.speed dummy
scoreboard objectives add summit.vehicles.step dummy
scoreboard objectives add summit.vehicles.effect dummy
scoreboard objectives add summit.vehicles.since_start dummy
scoreboard objectives add summit.vehicles.direction dummy
