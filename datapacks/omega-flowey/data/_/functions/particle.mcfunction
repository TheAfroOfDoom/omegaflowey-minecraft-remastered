# $execute positioned $(x) $(y) $(z) facing entity @p[team=player] eyes run particle heart ^ ^ ^2
$execute if entity @s[tag=omega-flowey.upper_eye.bone.pupil.right] run execute positioned $(x) $(y) $(z) run particle heart ^ ^ ^-2
$execute unless entity @s[tag=omega-flowey.upper_eye.bone.pupil.right] run execute positioned $(x) $(y) $(z) run particle heart ^ ^ ^2
