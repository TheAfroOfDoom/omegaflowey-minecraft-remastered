$function omegaflowey.utils:error { error: '{ \
  "text": "", "color": "yellow", "extra": [ \
    "No ", \
    { "text": "$(type)_eye ", "color": "aqua" }, \
    "model exists. At least one " , \
    { "text": "$(type)_eye ", "color": "aqua" }, \
    "model must exist before starting the ", \
    { "text": "x-bullets-$(type) ", "color": "red" }, \
    "attack." \
  ] \
}'}
kill @s
