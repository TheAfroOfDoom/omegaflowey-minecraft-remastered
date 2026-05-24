function reef:api/remote/linked_remote/load_remote_data
execute unless function reef:api/remote/linked_remote/prepare_screen_link run return fail
execute as @n[type=item_display, tag=reef.screen, predicate=reef:zzzinternals/id_link/screen] run function reef:api/remote/linked_remote/remove_screen/nested_execute_0
item modify entity @s weapon.mainhand reef:item/remote/convert_to_unlinked_remote
