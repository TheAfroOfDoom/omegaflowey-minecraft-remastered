execute as @e[type=item_display, tag=summit_drawbridge.gate_arm] at @s run rotate @s ~ -90
function summit.drawbridge:move/place/gate_arm_4
schedule function summit.drawbridge:move/place/gate_arm_3 8
schedule function summit.drawbridge:move/place/gate_arm_2 23
schedule function summit.drawbridge:move/place/gate_arm_1 38
schedule function summit.drawbridge:move/place/gate_arm_0 53
