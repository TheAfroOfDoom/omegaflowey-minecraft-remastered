function aj:omegaflowey_upper_eye/animations/omegaflowey_look_around/resume
function aj:omegaflowey_upper_eye/variants/default/apply
execute on passengers \
  if entity @s[tag=aj.omegaflowey_upper_eye.bone] \
  run function omegaflowey:entity/hostile/omega-flowey/summon/initialize/shared/bone
