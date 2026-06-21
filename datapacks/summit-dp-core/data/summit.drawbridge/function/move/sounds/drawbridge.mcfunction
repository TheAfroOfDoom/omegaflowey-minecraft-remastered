execute positioned -112.0 78 -193.0 run playsound summit_ambiance:summit.drawbridge.move ambient @a[distance=..40] ~ ~ ~ 3 1
execute positioned -112.0 78 -193.0 run playsound summit_ambiance:summit.drawbridge.tick ambient @a[distance=..40] ~ ~ ~ 3 1
schedule function summit.drawbridge:move/sounds/drawbridge 20
