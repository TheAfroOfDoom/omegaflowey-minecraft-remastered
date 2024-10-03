# runs every tick on the bullet AJ model, terminating if it's outside the booth bounds
execute unless entity @s[x=-185, dx=90, y=13, dy=72, z=12, dz=90] run \
  function entity:hostile/omega-flowey/attack/friendliness-pellets/bullet/terminate
