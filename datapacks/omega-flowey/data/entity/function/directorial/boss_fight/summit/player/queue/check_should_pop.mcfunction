# if there is a player doing the bossfight, we cannot pop the queue
execute if entity @a[tag=omegaflowey.player.fighting_flowey] run return 0

# otherwise, pop queue
function entity:directorial/boss_fight/summit/player/queue/pop with storage omegaflowey:bossfight player_queue[0]
