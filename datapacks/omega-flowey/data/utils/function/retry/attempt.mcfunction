execute if score #utils:retry.attempt_i math.0 >= #utils:retry.attempt_max math.0 run return 0
scoreboard players add #utils:retry.attempt_i math.0 1

$$(attempt_command)

$execute $(success_condition) run return 0

$execute if score #utils:retry.attempt_i math.0 < #utils:retry.attempt_max math.0 run $(fail_command)

function utils:retry/attempt with storage utils:retry
