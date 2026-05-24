data remove storage summit.vehicles:temp track
$data modify storage summit.vehicles:temp track set from storage summit.vehicles:main tracks[{name: "$(track_name)"}]
execute unless data storage summit.vehicles:temp track run return run tellraw @s {text: "Specified track does not exist!", color: "red"}
$data modify storage summit.vehicles:temp speed set value $(speed)
execute positioned 0 0 0 summon marker run function summit.dev:zz/vehicle/track/plot_path/nested_macro_0 with storage summit.vehicles:temp {}
