tp @s ^-1.5 ^2 ^0 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:upper_eye/on_summon/as_locator_entities