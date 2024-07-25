# Update state flag
scoreboard players set #soul_0.touched soul.flag 1

# Apply yellow-highlighted variant
function animated_java:act_button/variants/selected/apply

# TODO(82): this could be a lot cleaner visually

summon block_display -2.5 49.5 -34.0 \ 
    {Tags:[call-for-help-display], \ 
    Passengers:[ \ 
        {id:"minecraft:text_display", \
            Tags:[call-for-help-display], \ 
            text:"{\"text\":\"* You Called For Help. . .\",\"color\":\"#FFFFFF\",\"font\":\"minecraft:uniform\"}", \ 
            text_opacity:255, \ 
            background:-1, \
            alignment:"center", \
            line_width:210, \
            default_background:false, \ 
            Rotation:[-180f,0f], \
            transformation:[30.0150f,0.0000f,0.0000f,0.0000f, \ 
                            0.0000f,30.0700f,0.0000f,0.4900f, \
                            0.0000f,0.0000f,30.0100f,-0.0100f, \ 
                            0.0000f,0.0000f,0.0000f,1.0000f] \
          }, \
        {id:"minecraft:text_display", \
            Tags:[call-for-help-display], \ 
            text:"{\"text\":\"* You Called For Help. . .\",\"color\":\"#FFFFFF\",\"font\":\"minecraft:uniform\"}", \
            text_opacity:255, \
            background:-16777216, \
            alignment:"center", \
            line_width:210, \
            default_background:false, \ 
            Rotation:[-180f,0f], \ 
            transformation:[30.0000f,0.0000f,0.0000f,0.0000f, \ 
                            0.0000f,30.0000f,0.0000f,0.5000f, \
                            0.0000f,0.0000f,30.0000f,0.0000f, \
                            0.0000f,0.0000f,0.0000f,1.0000f] \
          } \
        ] \
      }

# TODO(36): transparent fade-out of `act_button` model?

execute as @e[tag=soul_0,tag=soul-executor] run function entity:soul/soul_0/executor/initialize/touch
