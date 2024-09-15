# inputs:
#   attempt_command: string (command)
#   fail_command: string (command)
#   max_attempts: int
#   success_condition: string (execute clause)
#
# runs a function up to `max_attempts` times, running a success condition check each time
# and returning early if it passes.
#
# can also specify an (optional) `fail_command` that is run after each `attempt_command` if the success condition fails
#
# on the final try, this util method runs `attempt_command` a final time, but doesn't run `fail_command` after
# and doesn't check for `success_condition`

scoreboard players set #utils:retry.attempt_i math.0 0
$scoreboard players set #utils:retry.attempt_max math.0 $(max_attempts)

$data modify storage utils:retry attempt_command set value $(attempt_command)
$data modify storage utils:retry fail_command set value $(fail_command)
$data modify storage utils:retry success_condition set value $(success_condition)

function utils:retry/attempt with storage utils:retry
