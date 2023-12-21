# @batch omega-flowey:setup
# @optional
# TODO this test can't run until we update to `packtest@v1.0.0-beta5`

## should add the `player` team
function omega-flowey:reset

team remove player

# create an entity with a group id
summon minecraft:pig ~ ~ ~ { Tags: ["omega-flowey", "test.setup.should-add-teams"], DeathLootTable: empty, NoAI: 1, PersistenceRequired: 1, }

# should not be able to join team that doesn't exist
execute store success score #omega-flowey:setup math.0 as @e[tag=test.setup.should-add-teams] run team join player
assert score #omega-flowey:setup math.0 matches 0

# add the team
function omega-flowey:setup

# should be able to join team that exists
execute store success score #omega-flowey:setup math.0 as @e[tag=test.setup.should-add-teams] run team join player
assert score #omega-flowey:setup math.0 matches 1
