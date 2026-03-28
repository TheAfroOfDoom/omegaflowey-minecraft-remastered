# all spectators / dead players should be moved to soul origin like normal
execute if entity @s[tag=!omegaflowey.player.fighting_flowey] run return run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/origin/to_soul_origin

# for soul event 3 (books), move active players within the bounds of the books
execute if score #omegaflowey.bossfight.progress.phase omegaflowey.boss-fight.progress.phase.i matches 3 run return run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/origin/to_soul_origin_soul_event_3

# for all other events, move to soul arena as normal
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/to_soul_origin
