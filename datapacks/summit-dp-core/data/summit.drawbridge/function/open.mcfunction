scoreboard players set #drawbridge_state summit.temp 1
function summit.drawbridge:move/gates/set_pole_on
function summit.drawbridge:move/gates/close
schedule function summit.drawbridge:move/sounds/drawbridge 70
schedule function summit.drawbridge:move/place/drawbridge_1 100
schedule function summit.drawbridge:move/place/drawbridge_2 130
schedule function summit.drawbridge:move/place/drawbridge_3 160
schedule function summit.drawbridge:move/sounds/stop_drawbridge 190
schedule function summit.drawbridge:move/gates/set_pole_off 210
schedule function summit.drawbridge:move/set_state_2 210
