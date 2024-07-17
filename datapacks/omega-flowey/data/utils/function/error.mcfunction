## expects a text component in the `error` parameter
# https://minecraft.wiki/w/Raw_JSON_text_format
$data modify storage utils:log text_component set value '[{"text":"ERROR ☠","color":"red"}, {"text":" > ","color":"gray"}, $(error)]'
function utils:log with storage utils:log
