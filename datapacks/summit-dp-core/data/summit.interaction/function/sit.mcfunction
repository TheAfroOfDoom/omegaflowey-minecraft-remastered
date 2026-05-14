execute store result storage summit:temp sitting.height double 0.5 run data get entity @s height
data modify storage summit:temp sitting.height set from entity @s data.summit_interactable.height
function summit.interaction:sit/nested_macro_0 with storage summit:temp sitting
