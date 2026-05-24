execute store result score .compare_value reef.zzzinternals.id_link run data get storage reef.zzzinternals:in remote.linked_remote.id 1
execute unless entity @n[type=item_display, tag=reef.screen, predicate=reef:zzzinternals/id_link/screen] run return run function reef:api/remote/linked_remote/prepare_screen_link/nested_return_0
return 1
