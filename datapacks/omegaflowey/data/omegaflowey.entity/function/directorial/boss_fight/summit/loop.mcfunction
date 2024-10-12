## Runs every tick off entities tagged `boss_fight_summit`

# Poll if active player UUID still exists and is actually the active player
function omegaflowey.entity:directorial/boss_fight/shared/loop/check_active_player_still_exists with storage omegaflowey:bossfight
execute unless score #omegaflowey.bossfight.stop_reason omegaflowey.global.flag matches 0 run return run \
  function omegaflowey.entity:directorial/boss_fight/shared/stop with storage omegaflowey:bossfight

# Run loop logic based on what phase the boss_fight is in
execute if entity @s[tag=boss_fight.phase.attack] run function omegaflowey.entity:directorial/boss_fight/summit/phase/attack/loop
execute if entity @s[tag=boss_fight.phase.soul] run function omegaflowey.entity:directorial/boss_fight/summit/phase/soul/loop
execute if entity @s[tag=boss_fight.phase.warn] run function omegaflowey.entity:directorial/boss_fight/summit/phase/warn/loop

# Run music-loop logic
execute if entity @s[tag=is_looping_music] run function omegaflowey.entity:directorial/boss_fight/music/loop
