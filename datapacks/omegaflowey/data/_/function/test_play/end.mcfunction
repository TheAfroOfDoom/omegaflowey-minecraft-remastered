tag @s remove is_test_playing
execute as @e[tag=aj.omegaflowey_tv_screen.root] at @s run function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/static/as_root

schedule clear _:test_play/scheduled
schedule function _:test_play/scheduled 6t
