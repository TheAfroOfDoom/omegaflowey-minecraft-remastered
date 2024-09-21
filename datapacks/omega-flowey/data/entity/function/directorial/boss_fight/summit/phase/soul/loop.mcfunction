# we check the score's larger range first because we could otherwise unintentionally
# run both loop functions in one tick if `pre_static` incremented the score from -1 -> 0
execute if score @s boss-fight.progress.clock.i matches 0.. run function entity:directorial/boss_fight/summit/phase/soul/loop/post_static
execute if score @s boss-fight.progress.clock.i matches ..-1 run function entity:directorial/boss_fight/summit/phase/soul/loop/pre_static
