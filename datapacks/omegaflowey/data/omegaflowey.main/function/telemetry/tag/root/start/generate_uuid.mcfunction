function gu:generate
data modify storage omegaflowey:telemetry tags[-1][-1].id set from storage gu:main out
kill @s
