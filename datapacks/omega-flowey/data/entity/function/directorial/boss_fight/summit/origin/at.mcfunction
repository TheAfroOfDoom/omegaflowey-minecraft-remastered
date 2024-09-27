# NOTE: player should have y-coord of -4 blocks from Origin's Y coord
# NOTE: TAG_SUMMIT_HARDCODED
$execute rotated 180 0 run function entity:directorial/boss_fight/summit/origin/at/x { \
  command: "function entity:directorial/boss_fight/summit/origin/at/y { \
    command: \"function entity:directorial/boss_fight/summit/origin/at/z { command: \\\"$(command)\\\" }\" \
  }" \
}
