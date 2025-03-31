execute as @e[tag=boss_fight] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/terminate/boss_fight

# player-markers may linger if a player takes damage before the executor load-states,
# so explicitly remove them here
execute as @e[tag=player-marker,tag=homing-vines-save-states] run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines-save-states/player/marker/terminate

# HACK: fix entity-count leak due to resummoned blinking lanes not being terminated for some reason
# (done this way for practical purposes instead of the correct way: not leaking resummoned
# blinking lanes)
execute as @e[type=minecraft:item_display,tag=homing-vines-save-states.resummoned] run \
  function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/blinking_lane/terminate

scoreboard players reset #omegaflowey.attack.homing-vines-save-states.did_player_take_damage omegaflowey.attack.flag

kill @s
