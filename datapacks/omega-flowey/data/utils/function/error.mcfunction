## expects a text component in the `error` parameter
# https://minecraft.wiki/w/Raw_JSON_text_format
$function utils:log { text_component: ' \
  [ \
    { "text": "ERROR ☠", "color": "red" }, \
    { "text": " > ", "color": "gray" }, \
    $(error) \
  ]' \
}
