execute if score @s omegaflowey.player.telemetry.trigger.disable matches 1 run \
  function omegaflowey.main:telemetry/admin/disable
execute if score @s omegaflowey.player.telemetry.trigger.enable matches 1 run \
  function omegaflowey.main:telemetry/admin/enable
execute if score @s omegaflowey.player.telemetry.trigger.help matches 1 run \
  function omegaflowey.main:telemetry/admin/help
execute if score @s omegaflowey.player.telemetry.trigger.new_page.booth matches 1 run \
  function omegaflowey.main:telemetry/admin/new_page/booth
execute if score @s omegaflowey.player.telemetry.trigger.new_page.bossfight matches 1 run \
  function omegaflowey.main:telemetry/admin/new_page/bossfight with storage omegaflowey:bossfight
execute if score @s omegaflowey.player.telemetry.trigger.pop.booth matches 1 run \
  function omegaflowey.main:telemetry/admin/pop/booth
execute if score @s omegaflowey.player.telemetry.trigger.pop.bossfight matches 1 run \
  function omegaflowey.main:telemetry/admin/pop/bossfight
execute if score @s omegaflowey.player.telemetry.trigger.show.booth matches 1 run \
  function omegaflowey.main:telemetry/admin/show/booth
execute if score @s omegaflowey.player.telemetry.trigger.show.bossfight matches 1 run \
  function omegaflowey.main:telemetry/admin/show/bossfight
execute if score @s omegaflowey.player.telemetry.trigger.stats matches 1 run \
  function omegaflowey.main:telemetry/admin/stats

function omegaflowey.main:telemetry/admin/reset_triggers
