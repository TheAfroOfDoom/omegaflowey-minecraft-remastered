# we check the score's larger range first because we could otherwise unintentionally
# run both loop functions in one tick if `pre_static` incremented the score from -1 -> 0
execute if score @s omegaflowey.boss-fight.progress.clock.i matches 0.. run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop/post_static
execute if score @s omegaflowey.boss-fight.progress.clock.i matches ..-1 run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop/pre_static
