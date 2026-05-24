data modify storage summit:temp balloon_vendor.data set from entity @s data.summit_interactable
execute on target at @s run function summit.interaction:balloon_vendor/nested_macro_2 with storage summit:temp balloon_vendor.data
