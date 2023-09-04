## Sets up objectives, fake players, entities, and teams required for the map to run.

# Debugging
execute if entity @a[scores={debug=1}] run say DEBUG: function of:setup

# Add teams
team add player
team modify player color blue
team modify player friendlyFire false
team modify player seeFriendlyInvisibles false

# Kill all `omega-flowey-remastered` entities
kill @e[tag=omega-flowey-remastered]
