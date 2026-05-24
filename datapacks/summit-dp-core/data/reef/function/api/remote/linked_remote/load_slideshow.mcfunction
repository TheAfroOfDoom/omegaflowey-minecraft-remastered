function reef:api/remote/linked_remote/load_remote_data
execute unless function reef:api/remote/linked_remote/prepare_screen_link run return fail
$execute as @n[type=item_display,tag=reef.screen,predicate=reef:zzzinternals/id_link/screen] run function reef:zzzinternals/screen/load_slideshow {id: '$(id)'}
