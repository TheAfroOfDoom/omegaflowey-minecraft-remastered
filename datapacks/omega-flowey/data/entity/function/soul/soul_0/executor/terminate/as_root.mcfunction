execute if entity @s[tag=act-button] run function entity:soul/soul_0/act_button/terminate
execute if entity @s[tag=bandaid] run function entity:soul/soul_0/bandaid/terminate
execute if entity @s[tag=soul-bullet] run function entity:soul/soul_0/bullet/terminate

# temporary entity killing of call for help display
kill @e[tag=call-for-help-display]
