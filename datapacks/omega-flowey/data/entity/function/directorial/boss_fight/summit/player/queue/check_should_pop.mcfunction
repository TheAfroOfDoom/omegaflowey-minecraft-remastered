# TODO only tell this to player if queue length is > 1 (already someone else in queue)
tellraw @s ["added to queue"]

# if there is a player doing the bossfight, we cannot pop the queue
execute if entity @a[tag=omegaflowey.player.fighting_flowey] run function utils:log/self { text_component: '[ \
  { "color": "yellow", "text": "Cannot join the boss-fight: " }, \
  { "color": "red", "text": "another player " }, \
  { "color": "yellow", "text": "is already fighting Flowey!" } \
  ]' \
}
execute if entity @a[tag=omegaflowey.player.fighting_flowey] run return 0

# otherwise, pop queue
function entity:directorial/boss_fight/summit/player/queue/pop with storage omegaflowey:bossfight player_queue[0]
