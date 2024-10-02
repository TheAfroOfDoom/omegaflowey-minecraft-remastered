# we cannot pop the queue if either:
# - there is nobody in the queue
execute if score #omega-flowey.bossfight.player_queue_count global.flag matches 0 run return 0
# - there is a player already doing the bossfight
execute if entity @a[tag=omegaflowey.player.fighting_flowey] run return 0

# otherwise, pop queue
function entity:directorial/boss_fight/summit/player/queue/pop with storage omegaflowey:bossfight player_queue[0]
