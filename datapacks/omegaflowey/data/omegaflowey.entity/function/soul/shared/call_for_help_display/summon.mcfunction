summon block_display ~ ~ ~ { \
  Tags: ["omega-flowey-remastered", "soul", "call-for-help-display", "call-for-help-display-new"], \
  Passengers: [ \
    { \
      id: "minecraft:text_display", \
      Tags: ["omega-flowey-remastered", "soul", "call-for-help-display", "call-for-help-display-new"], \
      text: '[\
        { \
          "text": " * You called for help... ", \
          "color": "white", \
          "font": "omega-flowey:determinationmono" \
        } \
      ]', \
      text_opacity:255, \
      background:-16777216, \
      alignment:"center", \
      line_width:210, \
      default_background:false, \
      Rotation: [180.0f, 0.0f], \
      transformation: { \
        left_rotation: [0.0f, 0.9914314f, -0.13062839f, 0.0f], \
        right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
        scale: [6.0f, 6.0f, 6.0f], \
        translation: [0.0f, 0.0f, 0.0f] \
      } \
    } \
  ] \
}
execute \
  positioned ~-1.0 ~-1.0 ~-1.0 \
  as @e[ \
    dx=2, dy=2, dz=2, \
    tag=call-for-help-display-new, \
    tag=omega-flowey-remastered, \
    limit=2 \
  ] run function omegaflowey.entity:soul/shared/call_for_help_display/initialize
