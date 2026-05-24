execute unless data storage reef.zzzinternals:tmp root.slideshow_data.reference[0] run return 1
data modify storage reef.zzzinternals:tmp root.slideshow_data.current.page_id set from storage reef.zzzinternals:tmp root.slideshow_data.reference[0]
function reef:zzzinternals/screen/load_slideshow/unpack_pages/nested_macro_1 with storage reef.zzzinternals:tmp root.slideshow_data.current
data remove storage reef.zzzinternals:tmp root.slideshow_data.reference[0]
function reef:zzzinternals/screen/load_slideshow/unpack_pages
