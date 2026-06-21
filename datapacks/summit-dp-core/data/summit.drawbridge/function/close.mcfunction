scoreboard players set #drawbridge_state summit.temp 1
function summit.drawbridge:move/gates/set_pole_on
function summit.drawbridge:move/sounds/drawbridge
schedule function summit.drawbridge:move/place/drawbridge_2 30
schedule function summit.drawbridge:move/place/drawbridge_1 60
schedule function summit.drawbridge:move/place/drawbridge_0 90
schedule function summit.drawbridge:move/sounds/stop_drawbridge 120
schedule function summit.drawbridge:move/gates/open 130
schedule function summit.drawbridge:move/gates/set_pole_off 210
schedule function summit.drawbridge:move/set_state_0 210
