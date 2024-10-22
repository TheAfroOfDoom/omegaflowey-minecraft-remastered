execute if score @s omegaflowey.player.telemetry.trigger.disable matches 1 run \
  function omegaflowey.main:telemetry/admin/disable
execute if score @s omegaflowey.player.telemetry.trigger.enable matches 1 run \
  function omegaflowey.main:telemetry/admin/enable
execute if score @s omegaflowey.player.telemetry.trigger.help matches 1 run \
  function omegaflowey.main:telemetry/admin/help
execute if score @s omegaflowey.player.telemetry.trigger.show matches 1 run \
  function omegaflowey.main:telemetry/admin/show
execute if score @s omegaflowey.player.telemetry.trigger.show_and_clear matches 1 run \
  function omegaflowey.main:telemetry/admin/show_and_clear

function omegaflowey.main:telemetry/admin/reset_triggers
