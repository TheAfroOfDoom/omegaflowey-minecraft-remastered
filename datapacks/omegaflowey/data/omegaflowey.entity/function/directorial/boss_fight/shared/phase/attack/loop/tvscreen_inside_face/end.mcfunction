tag @s remove is_animating_tvscreen_inside_face
execute as @e[tag=aj.omegaflowey_tv_screen.root] at @s run function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/static/as_root

schedule clear omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/tvscreen_inside_face/scheduled
schedule function omegaflowey.entity:directorial/boss_fight/shared/phase/attack/loop/tvscreen_inside_face/scheduled 6t
