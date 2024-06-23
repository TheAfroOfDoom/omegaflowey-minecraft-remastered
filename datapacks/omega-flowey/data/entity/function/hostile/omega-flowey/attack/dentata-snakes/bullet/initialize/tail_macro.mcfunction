## Begin animation
$function animated_java:dentata_snake_ball/animations/roll_scale_$(scale_rounded)/play

# Print error if there is no matching function (and as a result the animation tag isn't added)
# animation tag is e.g.: `aj.dentata_snake_ball.animation.roll_scale_50.playing`
$execute unless entity @s[tag=aj.dentata_snake_ball.animation.roll_scale_$(scale_rounded).playing] run function utils:error { error: '[ {"text":"No corresponding animation found for ","color":"yellow"}, {"text": "scale ", "color": "red"}, {"text":"$(scale_rounded) ","color":"aqua"},{"text":"with model "}, {"text":"dentata_snake_ball ","color":"blue"} ]'}
