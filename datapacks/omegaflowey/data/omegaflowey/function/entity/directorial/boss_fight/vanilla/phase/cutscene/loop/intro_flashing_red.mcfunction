execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 0 run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/start_cutscene with storage omegaflowey:bossfight

execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 1 run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/clear_player_blindness with storage omegaflowey:bossfight

execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 0..293 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/approach
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 332 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/turn_on_screen with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 362 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_2 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 363 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_3 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 365 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_4 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 366 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_5 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 367 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_6 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 380 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_7 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 381 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_8 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 383 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_9 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 384 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_10 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 385 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/reveal_11 with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 422 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/undarken with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 442 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/laugh_start with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 562 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/laugh_stop with storage omegaflowey:bossfight
execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 564 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/loop/intro_flashing_red/laugh_stop/screen with storage omegaflowey:bossfight

execute if score @s omegaflowey.boss-fight.cutscene.clock.i matches 575 run return run \
  function omegaflowey:entity/directorial/boss_fight/vanilla/phase/cutscene/terminate with storage omegaflowey:bossfight
