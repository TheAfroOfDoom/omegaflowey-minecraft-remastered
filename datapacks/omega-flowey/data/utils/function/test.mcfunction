function utils:retry { \
  attempt_command: "'say attempt'", \
  fail_command: "'say fail'", \
  success_condition: "'if entity @e[type=cow]'", \
  max_attempts: 3, \
}
