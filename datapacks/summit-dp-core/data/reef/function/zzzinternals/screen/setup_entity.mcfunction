tag @s add reef.entity
tag @s add reef.screen
function reef:zzzinternals/id/screen
rotate @s ~ ~
execute at @s summon item_display run function reef:zzzinternals/screen/display/transition/setup
scoreboard players operation @n[type=item_display, tag=reef.element.transition, tag=reef.element.new] reef.zzzinternals.parent.screen.id = @s reef.zzzinternals.screen.id
tag @n[type=item_display, tag=reef.element.transition, tag=reef.element.new] remove reef.element.new
tag @s add reef.screen.transition.finished
