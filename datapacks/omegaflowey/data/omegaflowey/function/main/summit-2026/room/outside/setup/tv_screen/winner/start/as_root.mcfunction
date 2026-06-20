tag @s remove queued_winner_animation
tag @s add is_winner_animation
stopsound @a[distance=..64] ambient omega-flowey:decorative.static

function aj:omegaflowey_tv_screen/variants/default/apply
function aj:omegaflowey_tv_screen/animations/omegaflowey_winner/play_exclusive

scoreboard players set #omegaflowey.decorative.tvscreen.winner.soul_idx omegaflowey.global.flag -1
